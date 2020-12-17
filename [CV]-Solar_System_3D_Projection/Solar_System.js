//////////////////////////////////////////////////////////////////////////////
//
//  Solar_System.js
//
//  Phong Illumination Model on the GPU - Per vertex shading - Several light sources
//
// António Domingues & Henrique Silva
//
//////////////////////////////////////////////////////////////////////////////


//----------------------------------------------------------------------------
//
// Global Variables
//

var x_position = 0;
var y_position = 0;
var z_position = 0.1;

var gl = null; // WebGL context

var shaderProgram = null;

var triangleVertexPositionBuffer = null;
	
var triangleVertexNormalBuffer = null;	

// The GLOBAL transformation parameters

var globalAngleYY = 0.0;

var globalTz = 0.0;

var cima =0;
var asteroides_flag=0;

var stopFlag = false;

var currentYYSpeed = 0.0;

var orbita_planetas = 9;

// GLOBAL Animation controls

var globalRotationYY_ON = 1;

var globalRotationYY_DIR = 1;

var globalRotationYY_SPEED = 1;

// To allow choosing the way of drawing the model triangles

var primitiveType = null;
 
// To allow choosing the projection type

var projectionType = 0;


// It has to be updated according to the projection type

var pos_Viewer = [ 0.0, 0.0, 0.0, 1.0 ];


//----------------------------------------------------------------------------
//
// To count the number of frames per second (fps)
//

var elapsedTime = 0;

var frameCount = 0;

var lastfpsTime = new Date().getTime();;


function countFrames() {
	
   var now = new Date().getTime();

   frameCount++;
   
   elapsedTime += (now - lastfpsTime);

   lastfpsTime = now;

   if(elapsedTime >= 1000) {
	   
       fps = frameCount;
       
       frameCount = 0;
       
       elapsedTime -= 1000;
	   
	   document.getElementById('fps').innerHTML = 'fps:' + fps;
   }
}


//----------------------------------------------------------------------------
//
// The WebGL code
//

//----------------------------------------------------------------------------
//
//  Rendering
//

// Handling the Vertex Coordinates and the Vertex Normal Vectors

function initBuffers( model ) {	
	
	// Vertex Coordinates
		
	triangleVertexPositionBuffer = gl.createBuffer();
	gl.bindBuffer(gl.ARRAY_BUFFER, triangleVertexPositionBuffer);
	gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(model.vertices), gl.STATIC_DRAW);
	triangleVertexPositionBuffer.itemSize = 3;
	triangleVertexPositionBuffer.numItems =  model.vertices.length / 3;			

	// Associating to the vertex shader
	
	gl.vertexAttribPointer(shaderProgram.vertexPositionAttribute, 
			triangleVertexPositionBuffer.itemSize, 
			gl.FLOAT, false, 0, 0);
	
	// Vertex Normal Vectors
		
	triangleVertexNormalBuffer = gl.createBuffer();
	gl.bindBuffer(gl.ARRAY_BUFFER, triangleVertexNormalBuffer);
	gl.bufferData(gl.ARRAY_BUFFER, new Float32Array( model.normals), gl.STATIC_DRAW);
	triangleVertexNormalBuffer.itemSize = 3;
	triangleVertexNormalBuffer.numItems = model.normals.length / 3;			

	// Associating to the vertex shader
	
	gl.vertexAttribPointer(shaderProgram.vertexNormalAttribute, 
			triangleVertexNormalBuffer.itemSize, 
			gl.FLOAT, false, 0, 0);	
}

//----------------------------------------------------------------------------

//  Drawing the model

function drawModel( model,
					mvMatrix,
					primitiveType ) {

	// The the global model transformation is an input
	
	// Concatenate with the particular model transformations
	
    // Transformation order 
    
	mvMatrix = mult( mvMatrix, translationMatrix( model.tx, model.ty, model.tz ) );
						
	mvMatrix = mult( mvMatrix, rotationZZMatrix( model.rotAngleZZ ) );
	
	mvMatrix = mult( mvMatrix, rotationYYMatrix( model.rotAngleYY ) );
	
	mvMatrix = mult( mvMatrix, rotationXXMatrix( model.rotAngleXX ) );
	
	mvMatrix = mult( mvMatrix, scalingMatrix( model.sx, model.sy, model.sz ) );
						 
	// Passing the Model View Matrix to apply the current transformation
	
	var mvUniform = gl.getUniformLocation(shaderProgram, "uMVMatrix");
	
	gl.uniformMatrix4fv(mvUniform, false, new Float32Array(flatten(mvMatrix)));
    
	// Associating the data to the vertex shader
	

	// Vertex Coordinates and Vertex Normal Vectors
	
	initBuffers(model);
	
	// Material properties
	
	gl.uniform3fv( gl.getUniformLocation(shaderProgram, "k_ambient"), 
		flatten(model.kAmbi) );
    
    gl.uniform3fv( gl.getUniformLocation(shaderProgram, "k_diffuse"),
        flatten(model.kDiff) );
    
    gl.uniform3fv( gl.getUniformLocation(shaderProgram, "k_specular"),
        flatten(model.kSpec) );

	gl.uniform1f( gl.getUniformLocation(shaderProgram, "shininess"), 
		model.nPhong );

	// Light Sources
	
	lightSources[0].position = [x_position, y_position, z_position, 0.0];
	
	var numLights = lightSources.length;
	
	gl.uniform1i( gl.getUniformLocation(shaderProgram, "numLights"), 
		numLights );

	//Light Sources
	
	for(var i = 0; i < lightSources.length; i++ )
	{
		gl.uniform1i( gl.getUniformLocation(shaderProgram, "allLights[" + String(i) + "].isOn"),
			lightSources[i].isOn );
    
		gl.uniform4fv( gl.getUniformLocation(shaderProgram, "allLights[" + String(i) + "].position"),
			flatten(lightSources[i].getPosition()) );
    
		gl.uniform3fv( gl.getUniformLocation(shaderProgram, "allLights[" + String(i) + "].intensities"),
			flatten(lightSources[i].getIntensity()) );
    }
        
	// Drawing 
	
	// primitiveType allows drawing as filled triangles / wireframe / vertices
	
	if( primitiveType == gl.LINE_LOOP ) {
		
		// To simulate wireframe drawing!
		
		// No faces are defined! There are no hidden lines!
		
		// Taking the vertices 3 by 3 and drawing a LINE_LOOP
		
		var i;
		
		for( i = 0; i < triangleVertexPositionBuffer.numItems / 3; i++ ) {
		
			gl.drawArrays( primitiveType, 3 * i, 3 ); 
		}
	}	
	else {
				
		gl.drawArrays(primitiveType, 0, triangleVertexPositionBuffer.numItems); 
		
	}	
}

//----------------------------------------------------------------------------

//  Drawing the 3D scene

function drawScene() {
	
	var pMatrix;
	
	var mvMatrix= [];
	for(var i = 0; i < sceneModels.length; i++){
		mvMatrix[i]= mat4();
	}
	// Clearing the frame-buffer and the depth-buffer
	
	gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
	
	// Computing the Projection Matrix
	
	if( projectionType == 0 ) {
		
		// The default orthogonal view volume
		
		pMatrix = ortho( -1.0, 1.0, -1.0, 1.0, -1.0, 1.0 );
		
		// Global transformation !!
		
		globalTz = 0.0;
		
		//The viewer is on the ZZ axis at an indefinite distance
		
		pos_Viewer[0] = pos_Viewer[1] = pos_Viewer[3] = 0.0;
		
		pos_Viewer[2] = 1.0;  
		
	}
	else {	

		// A standard view volume.
		
		// Viewer is at (0,0,0)
		
		// We need to ensure that the model is "inside" the view volume
		
		pMatrix = perspective( 45, 1, 0.05, 15 );
		
		// Global transformation !!
		
		globalTz = -2.5;

		//The viewer is on (0,0,0)
		
		pos_Viewer[0] = pos_Viewer[1] = pos_Viewer[2] = 0.0;
		
		pos_Viewer[3] = 1.0;  
		
	}
	
	// Passing the Projection Matrix to apply the current projection
	
	var pUniform = gl.getUniformLocation(shaderProgram, "uPMatrix");
	
	gl.uniformMatrix4fv(pUniform, false, new Float32Array(flatten(pMatrix)));
	
	// Passing the viewer position to the vertex shader
	
	gl.uniform4fv( gl.getUniformLocation(shaderProgram, "viewerPosition"),
        flatten(pos_Viewer) );
	
	// GLOBAL TRANSFORMATION FOR THE WHOLE SCENE
	
	//mvMatrix = translationMatrix( 0, 0, globalTz );
	if((cima == 0) && (orbita_planetas==9)){
		//Sol
		mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix(0) );

		//Mercurio
		mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*1.6 ) );

		//Venus
		mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*1.17 ) );

		//Terra
		mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*1 ) );

		//Marte
		mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*0.8 ) );

		//Jupiter
		mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*0.43 ) );

		//Saturno
		mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*0.32 ) );

		//Urano
		mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*0.23 ) );

		//Neptuno
		mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix( globalAngleYY*0.18 ) );
		if(asteroides_flag == 1){
			for(var y=9; y<100; y++){
				mvMatrix[y] = mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( globalAngleYY*Math.random()*0.2));
			}
			
		}

	}if((cima == 1) && (orbita_planetas==9)){
		//Sol
		mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
		rotationYYMatrix(0) );

		//Mercurio
		mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*1.6 ) );

		//Venus
		mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*1.17 ) );

		//Terra
		mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*1 ) );

		//Marte
		mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*0.8 ) );

		//Jupiter
		mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*0.43 ) );

		//Saturno
		mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*0.32 ) );

		//Urano
		mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*0.23 ) );

		//Neptuno
		mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
		rotationZZMatrix( globalAngleYY*0.18 ) );
		
		//Asteroides
		if(asteroides_flag == 1){
			for(var y=9; y<100; y++){
				mvMatrix[y] = mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( globalAngleYY*Math.random()*0.2));
			}
			
		}

	}if((cima == 0) & (orbita_planetas != 9)){
		globalRotationYY_ON = 1;
		if(orbita_planetas == 1){
				//Sol
				mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix(0) );
		
				//Mercurio
				mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( globalAngleYY*1.6 ) );
		
				//Venus
				mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*1.17 ) );
		
				//Terra
				mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*1 ) );
		
				//Marte
				mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*0.8 ) );
		
				//Jupiter
				mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*0.43 ) );
		
				//Saturno
				mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*0.32 ) );
		
				//Urano
				mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*0.23 ) );
		
				//Neptuno
				mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
				rotationYYMatrix( 0*0.18 ) );
			
		}if(orbita_planetas == 2){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 3){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 4){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 5){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 6){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 7){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 8){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationYYMatrix( globalAngleYY*0.18 ) );
		}
		
	}if((cima == 1) & (orbita_planetas != 9)){
		globalRotationYY_ON = 1;
		if(orbita_planetas == 1){
				//Sol
				mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix(0) );
		
				//Mercurio
				mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( globalAngleYY*1.6 ) );
		
				//Venus
				mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*1.17 ) );
		
				//Terra
				mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*1 ) );
		
				//Marte
				mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*0.8 ) );
		
				//Jupiter
				mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*0.43 ) );
		
				//Saturno
				mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*0.32 ) );
		
				//Urano
				mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*0.23 ) );
		
				//Neptuno
				mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
				rotationZZMatrix( 0*0.18 ) );
			
		}if(orbita_planetas == 2){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 3){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 4){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 5){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 6){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 7){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.18 ) );
		}
		if(orbita_planetas == 8){
			//Sol
			mvMatrix[0] = mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix(0) );
	
			//Mercurio
			mvMatrix[1]= mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.6 ) );
	
			//Venus
			mvMatrix[2] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1.17 ) );
	
			//Terra
			mvMatrix[3] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*1 ) );
	
			//Marte
			mvMatrix[4] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.8 ) );
	
			//Jupiter
			mvMatrix[5] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.43 ) );
	
			//Saturno
			mvMatrix[6] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.32 ) );
	
			//Urano
			mvMatrix[7] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( 0*0.23 ) );
	
			//Neptuno
			mvMatrix[8] =mult( translationMatrix( 0, 0, globalTz ),
			rotationZZMatrix( globalAngleYY*0.18 ) );
		}
		
	}
	
	// Updating the position of the light sources, if required
	
	// FOR EACH LIGHT SOURCE
	    
	for(var i = 0; i < lightSources.length; i++ )
	{
		// Animating the light source, if defined
		    
		var lightSourceMatrix = mat4();

		if( !lightSources[i].isOff() ) {
			

			if( lightSources[i].isRotYYOn() ) 
			{
				lightSourceMatrix = mult( 
						lightSourceMatrix, 
						rotationYYMatrix( lightSources[i].getRotAngleYY() ) );
			}
		}
		
		// Passing the Light Souree Matrix to apply
	
		var lsmUniform = gl.getUniformLocation(shaderProgram, "allLights["+ String(i) + "].lightSourceMatrix");
	
		gl.uniformMatrix4fv(lsmUniform, false, new Float32Array(flatten(lightSourceMatrix)));
	}
			
	// Instantianting all scene models 
	if(asteroides_flag ==1){ //caso os asteroides estejam ativados
		for(var i = 0; i < sceneModels.length; i++ )
		{ 
		drawModel( sceneModels[i],
			   mvMatrix[i],
	           primitiveType );
		}
	}
	if(asteroides_flag == 0){ //caso os asteroides estejam desativados
		for(var i = 0; i <= 8; i++ )
		{ 
		drawModel( sceneModels[i],
			   mvMatrix[i],
	           primitiveType );
		}
	}
	           
	// Counting the frames
	
	countFrames();
}

//----------------------------------------------------------------------------

// Animation --- Updating transformation parameters

var lastTime = 0;

function animate() {
	
	var timeNow = new Date().getTime();
	
	if( lastTime != 0 ) {
		
		var elapsed = timeNow - lastTime;
		
		// Global rotation
		
		if( globalRotationYY_ON ) {

			globalAngleYY += globalRotationYY_DIR * globalRotationYY_SPEED * (90 * elapsed) / 1000.0;
	    }

		// For every model --- Local rotations
		
		for(var i = 0; i < sceneModels.length; i++ )
	    {
			if( sceneModels[i].rotXXOn ) {

				sceneModels[i].rotAngleXX += sceneModels[i].rotXXDir * sceneModels[i].rotXXSpeed * (90 * elapsed) / 1000.0;
			}

			if( sceneModels[i].rotYYOn ) {

				sceneModels[i].rotAngleYY += sceneModels[i].rotYYDir * sceneModels[i].rotYYSpeed * (90 * elapsed) / 1000.0;
			}

			if( sceneModels[i].rotZZOn ) {

				sceneModels[i].rotAngleZZ += sceneModels[i].rotZZDir * sceneModels[i].rotZZSpeed * (90 * elapsed) / 1000.0;
			}
		}
		
		// Rotating the light sources
	
		for(var i = 0; i < lightSources.length; i++ )
	    {
			if( lightSources[i].isRotYYOn() ) {

				var angle = lightSources[i].getRotAngleYY() + lightSources[i].getRotationSpeed() * (90 * elapsed) / 1000.0;
		
				lightSources[i].setRotAngleYY( angle );
			}
		}
}
	
	lastTime = timeNow;
}


//----------------------------------------------------------------------------

// Timer

function tick() {
	
	requestAnimFrame(tick);
	handleKeys();
	
	drawScene();
	
	animate();
}

// Handling keyboard events

// Adapted from www.learningwebgl.com

//ZOOM IN AND ZOOM OUT
var currentlyPressedKeys = {};

function handleKeys() {
	
	if (currentlyPressedKeys[79]) {
		
		// KEY O
		for(var i=0; i<sceneModels.length; i++){
			
			sceneModels[i].sx *= 0.9;
			sceneModels[i].sy *= 0.9;
			sceneModels[i].sz *= 0.9;
			sceneModels[i].tx *= 0.9;
			sceneModels[i].ty *= 0.9;
			sceneModels[i].tz *= 0.9;
		}
	}

	if (currentlyPressedKeys[73]) {
		// KEY I
		for(var i=0; i<sceneModels.length; i++){

			zoomInFlag = 1;
			sceneModels[i].sx *= 1.1;
			sceneModels[i].sy *= 1.1;
			sceneModels[i].sz *= 1.1;
			sceneModels[i].tx *= 1.1;
			sceneModels[i].ty *= 1.1;
			sceneModels[i].tz *= 1.1;
		}
	}

	if(currentlyPressedKeys[39]){

		for(var i=0; i<sceneModels.length; i++){
			sceneModels[i].tx += 0.05;
		}
	}

	if(currentlyPressedKeys[37]){

		for(var i=0; i<sceneModels.length; i++){
			sceneModels[i].tx -= 0.05;
		}
	}
}

//----------------------------------------------------------------------------
//
//  User Interaction
//

function outputInfos(){
    
}

var mouseDown = false;

var lastMouseX = null;

var lastMouseY = null;

function handleMouseDown(event) {
	
    mouseDown = true;
  
    lastMouseX = event.clientX;
  
    lastMouseY = event.clientY;
}

function handleMouseUp(event) {

    mouseDown = false;
}

function handleMouseMove(event) {

    if (!mouseDown) {
	  
      return;
    } 
  
    // Rotation angles proportional to cursor displacement
    
    var newX = event.clientX;
  
    var newY = event.clientY;

    var deltaX = newX - lastMouseX;
    
    x_position += ( 0.001 * deltaX  )

    var deltaY = newY - lastMouseY;
    
    y_position += ( -0.001 * deltaY  )
    
    lastMouseX = newX
    
    lastMouseY = newY;
  }

//----------------------------------------------------------------------------

function setEventListeners(canvas){

	canvas.onmousedown = handleMouseDown;
    
    document.onmouseup = handleMouseUp;
    
    document.onmousemove = handleMouseMove;
    
    // NEW ---Handling the keyboard
	
	// From learningwebgl.com

    function handleKeyDown(event) {
		
        currentlyPressedKeys[event.keyCode] = true;
    }

    function handleKeyUp(event) {
		
        currentlyPressedKeys[event.keyCode] = false;
    }

	document.onkeydown = handleKeyDown;
    
    document.onkeyup = handleKeyUp;
	
    // Dropdown list
	
	var projection = document.getElementById("projection-selection");
	
	projection.addEventListener("click", function(){
				
		// Getting the selection
		
		var p = projection.selectedIndex;
				
		switch(p){
			
			case 0 : projectionType = 0;
				break;
			
			case 1 : projectionType = 1;
				break;
		}  	
	});    

	
	
	var tipovista = document.getElementById("view-selection");
	
	tipovista.addEventListener("click", function(){
				
		// Getting the selection
		
		var ola = tipovista.selectedIndex;
				
		switch(ola){
			
			case 0 : cima = 0;
				break;
			
			case 1 : cima = 1;
				break;
		}  	
	});   
	
	
	var orbit_view = document.getElementById("orbit-selection");
	
	orbit_view.addEventListener("click", function(){
				
		// Getting the selection
		
		 orbita_planetas = orbit_view.selectedIndex;
					
	});


	var asteroides_sel = document.getElementById("asteroides-selection");
	
	asteroides_sel.addEventListener("click", function(){
				
		// Getting the selection
		
		asteroides_flag = asteroides_sel.selectedIndex;
					
	});


	// Button events      
      
	document.getElementById("faster_velocity-button").onclick = function(){
		globalRotationYY_SPEED += 0.1;  
		stopFlag = false;
		currentYYSpeed = globalRotationYY_SPEED;
	};   

    document.getElementById("slower_velocity-button").onclick = function(){
		globalRotationYY_SPEED -= 0.1; 
		stopFlag = false;
		currentYYSpeed = globalRotationYY_SPEED;
	};  

	document.getElementById("change-direction").onclick = function(){
		globalRotationYY_SPEED *= -1; 
		stopFlag = false;
		currentYYSpeed = globalRotationYY_SPEED;
	}; 

	document.getElementById("stop-button").onclick = function(){
		globalAngleYY = 1.0;
		globalRotationYY_ON = 0;
		stopFlag = true;
	}

	document.getElementById("stop").onclick = function(){
		globalRotationYY_SPEED = 0;
	}

	document.getElementById("go-button").onclick = function(){
		globalRotationYY_ON = 1;
		globalRotationYY_SPEED = 1;
		stopFlag = false;
		if(cima==0){
			sceneModels[0].tx= 0;
			sceneModels[1].tx =  0.14;
			sceneModels[2].tx = 0.18;
			sceneModels[3].tx = 0.26;
			sceneModels[4].tx = 0.39;
			sceneModels[5].tx = 0.497;
			sceneModels[6].tx = 0.68;
			sceneModels[7].tx = 0.85;
			sceneModels[8].tx = 0.95;
			for(var i = 0; i<=8; i++){
				sceneModels[i].sx = sceneModels[i].sy = sceneModels[i].sz = 0.115;
			}
			for(var i = 9; i< sceneModels.length; i++){
				sceneModels[i].sx = sceneModels[i].sy = sceneModels[i].sz = (0.115*0.05);
				sceneModels[i].tx = 0.42;
				if(i<=50){
					sceneModels[i].ty = -0.1*Math.random();
				}else{
					sceneModels[i].ty = 0.1*Math.random();
				}
			}
			sceneModels[0].sx *= 1; sceneModels[0].sy *= 1; sceneModels[0].sz *= 1;
			sceneModels[1].sx *= 0.1; sceneModels[1].sy *= 0.1; sceneModels[1].sz *= 0.1;
			sceneModels[2].sx *= 0.2; sceneModels[2].sy *= 0.2; sceneModels[2].sz *= 0.2;
			sceneModels[3].sx *= 0.3; sceneModels[3].sy *= 0.3; sceneModels[3].sz *= 0.3;
			sceneModels[4].sx *= 0.175; sceneModels[4].sy *= 0.175; sceneModels[4].sz *= 0.175;
			sceneModels[5].sx *= 0.57; sceneModels[5].sy *= 0.57; sceneModels[5].sz *= 0.57;
			sceneModels[6].sx *= 0.55; sceneModels[6].sy *= 0.55; sceneModels[6].sz *= 0.55;
			sceneModels[7].sx *= 0.425; sceneModels[7].sy *= 0.425; sceneModels[7].sz *= 0.425;
			sceneModels[8].sx *= 0.28; sceneModels[8].sy *= 0.28; sceneModels[8].sz *= 0.28;
		}else{
			sceneModels[0].tx= 0;
			sceneModels[1].tx = 0.12;
			sceneModels[2].tx = 0.18;
			sceneModels[3].tx = 0.26;
			sceneModels[4].tx = 0.39;
			sceneModels[5].tx = 0.497;
			sceneModels[6].tx = 0.68;
			sceneModels[7].tx = 0.85;
			sceneModels[8].tx = 0.95;
			for(var i = 0; i<= 8; i++){
				sceneModels[i].sx = sceneModels[i].sy = sceneModels[i].sz = 0.115;
			}
			for(var i = 9; i< sceneModels.length; i++){
				sceneModels[i].sx = sceneModels[i].sy = sceneModels[i].sz = (0.115*0.05);
				sceneModels[i].tx = 0.42;
				if(i<=50){
					sceneModels[i].ty = -0.1*Math.random();
				}else{
					sceneModels[i].ty = 0.1*Math.random();
				}
			}
			sceneModels[0].sx *= 1; sceneModels[0].sy *= 1; sceneModels[0].sz *= 1;
			sceneModels[1].sx *= 0.1; sceneModels[1].sy *= 0.1; sceneModels[1].sz *= 0.1;
			sceneModels[2].sx *= 0.2; sceneModels[2].sy *= 0.2; sceneModels[2].sz *= 0.2;
			sceneModels[3].sx *= 0.3; sceneModels[3].sy *= 0.3; sceneModels[3].sz *= 0.3;
			sceneModels[4].sx *= 0.175; sceneModels[4].sy *= 0.175; sceneModels[4].sz *= 0.175;
			sceneModels[5].sx *= 0.57; sceneModels[5].sy *= 0.57; sceneModels[5].sz *= 0.57;
			sceneModels[6].sx *= 0.55; sceneModels[6].sy *= 0.55; sceneModels[6].sz *= 0.55;
			sceneModels[7].sx *= 0.425; sceneModels[7].sy *= 0.425; sceneModels[7].sz *= 0.425;
			sceneModels[8].sx *= 0.28; sceneModels[8].sy *= 0.28; sceneModels[8].sz *= 0.28;
		}
		orbita_planetas = 9;
		drawScene();
		
	}
}

//----------------------------------------------------------------------------
//
// WebGL Initialization
//

function initWebGL( canvas ) {
	try {
		
		// Create the WebGL context
		
		// Some browsers still need "experimental-webgl"
		
		gl = canvas.getContext("webgl") || canvas.getContext("experimental-webgl");
		
		// DEFAULT: The viewport occupies the whole canvas 
		
		// DEFAULT: The viewport background color is WHITE
		
		// NEW - Drawing the triangles defining the model
		
		primitiveType = gl.TRIANGLES;
		
		// DEFAULT: Face culling is DISABLED
		
		// Enable FACE CULLING
		
		gl.enable( gl.CULL_FACE );
		
		// DEFAULT: The BACK FACE is culled!!
		
		// The next instruction is not needed...
		
		gl.cullFace( gl.BACK );
		
		// Enable DEPTH-TEST
		
		gl.enable( gl.DEPTH_TEST );
        
	} catch (e) {
	}
	if (!gl) {
		alert("Could not initialise WebGL, sorry! :-(");
	}        
}

//----------------------------------------------------------------------------

function runWebGL() {
	
	var canvas = document.getElementById("my-canvas");

	initWebGL( canvas );

	shaderProgram = initShaders( gl );
	
	setEventListeners(canvas );
	
	tick();		// A timer controls the rendering / animation    

	outputInfos();
}

