//////////////////////////////////////////////////////////////////////////////
//
//  For instantiating the scene models.
//
//  António Domingues & Henrique Silva
//
//////////////////////////////////////////////////////////////////////////////

//----------------------------------------------------------------------------
//
//  Constructors
//
 var asteroides_01=0;


function emptyModelFeatures() {

	// EMPTY MODEL

	this.vertices = [];

	this.normals = [];

	// Transformation parameters

	// Displacement vector
	
	this.tx = 0.0;
	
	this.ty = 0.0;
	
	this.tz = 0.0;	
	
	// Rotation angles	
	
	this.rotAngleXX = 0.0;
	
	this.rotAngleYY = 0.0;
	
	this.rotAngleZZ = 0.0;	

	// Scaling factors
	
	this.sx = 0.115;
	
	this.sy = 0.115;
	
	this.sz = 0.115;		
	
	// Animation controls
	
	this.rotXXOn = true;
	
	this.rotYYOn = true;
	
	this.rotZZOn = true;
	
	this.rotXXSpeed = 0.0;
	
	this.rotYYSpeed = 1.0;
	
	this.rotZZSpeed = 0.0;
	
	this.rotXXDir = 1;
	
	this.rotYYDir = 1;
	
	this.rotZZDir = 1;
	
	// Material features
	
	this.kAmbi = [ 0.2, 0.2, 0.2 ];
	
	this.kDiff = [ 0.7, 0.7, 0.7 ];

	this.kSpec = [ 0.7, 0.7, 0.7 ];

	this.nPhong = 100;
}

function singleTriangleModel( ) {
	
	var triangle = new emptyModelFeatures();
	
	// Default model has just ONE TRIANGLE

	triangle.vertices = [

		// FRONTAL TRIANGLE
		 
		-0.5, -0.5,  0.5,
		 
		 0.5, -0.5,  0.5,
		 
		 0.5,  0.5,  0.5,
	];

	triangle.normals = [

		// FRONTAL TRIANGLE
		 
		 0.0,  0.0,  1.0,
		 
		 0.0,  0.0,  1.0,
		 
		 0.0,  0.0,  1.0,
	];

	return triangle;
}


function simpleCubeModel( ) {
	
	var cube = new emptyModelFeatures();
	
	cube.vertices = [

		-1.000000, -1.000000,  1.000000, 
		 1.000000,  1.000000,  1.000000, 
		-1.000000,  1.000000,  1.000000, 
		-1.000000, -1.000000,  1.000000,
		 1.000000, -1.000000,  1.000000, 
		 1.000000,  1.000000,  1.000000, 
         1.000000, -1.000000,  1.000000, 
		 1.000000, -1.000000, -1.000000, 
		 1.000000,  1.000000, -1.000000, 
         1.000000, -1.000000,  1.000000, 
         1.000000,  1.000000, -1.000000, 
         1.000000,  1.000000,  1.000000, 
        -1.000000, -1.000000, -1.000000, 
        -1.000000,  1.000000, -1.000000,
         1.000000,  1.000000, -1.000000, 
        -1.000000, -1.000000, -1.000000, 
         1.000000,  1.000000, -1.000000, 
         1.000000, -1.000000, -1.000000, 
        -1.000000, -1.000000, -1.000000, 
		-1.000000, -1.000000,  1.000000, 
		-1.000000,  1.000000, -1.000000, 
		-1.000000, -1.000000,  1.000000, 
		-1.000000,  1.000000,  1.000000, 
		-1.000000,  1.000000, -1.000000, 
		-1.000000,  1.000000, -1.000000, 
		-1.000000,  1.000000,  1.000000, 
		 1.000000,  1.000000, -1.000000, 
		-1.000000,  1.000000,  1.000000, 
		 1.000000,  1.000000,  1.000000, 
		 1.000000,  1.000000, -1.000000, 
		-1.000000, -1.000000,  1.000000, 
		-1.000000, -1.000000, -1.000000,
		 1.000000, -1.000000, -1.000000, 
		-1.000000, -1.000000,  1.000000, 
		 1.000000, -1.000000, -1.000000, 
		 1.000000, -1.000000,  1.000000, 	 
	];

	computeVertexNormals( cube.vertices, cube.normals );

	return cube;
}


function cubeModel( subdivisionDepth = 0 ) {
	
	var cube = new simpleCubeModel();
	
	midPointRefinement( cube.vertices, subdivisionDepth );
	
	computeVertexNormals( cube.vertices, cube.normals );
	
	return cube;
}


function simpleTetrahedronModel( ) {
	
	var tetra = new emptyModelFeatures();
	
	tetra.vertices = [

		-1.000000,  0.000000, -0.707000, 
         0.000000,  1.000000,  0.707000, 
         1.000000,  0.000000, -0.707000, 
         1.000000,  0.000000, -0.707000, 
         0.000000,  1.000000,  0.707000, 
         0.000000, -1.000000,  0.707000, 
        -1.000000,  0.000000, -0.707000, 
         0.000000, -1.000000,  0.707000, 
         0.000000,  1.000000,  0.707000, 
        -1.000000,  0.000000, -0.707000, 
         1.000000,  0.000000, -0.707000, 
         0.000000, -1.000000,  0.707000,
	];

	computeVertexNormals( tetra.vertices, tetra.normals );

	return tetra;
}


function tetrahedronModel( subdivisionDepth = 0 ) {
	
	var tetra = new simpleTetrahedronModel();
	
	midPointRefinement( tetra.vertices, subdivisionDepth );
	
	computeVertexNormals( tetra.vertices, tetra.normals );
	
	return tetra;
}


function sphereModel( subdivisionDepth = 2 ) {
	
	var sphere = new simpleCubeModel();
	
	midPointRefinement( sphere.vertices, subdivisionDepth );
	
	moveToSphericalSurface( sphere.vertices )
	
	computeVertexNormals( sphere.vertices, sphere.normals );
	
	return sphere;
}


//----------------------------------------------------------------------------
//
//  Instantiating scene models
//

var sceneModels = [];

//SOL
sceneModels.push( new sphereModel( 5 ) );
sceneModels[0].sx *= 1; sceneModels[0].sy *= 1; sceneModels[0].sz *= 1;
sceneModels[0].kAmbi = [ 1.0, 1.0, 0.0 ];
sceneModels[0].kDiff = [ 1.0, 1.0, 0.0 ];
sceneModels[0].kSpec = [ 1.0,  1.0, 0.0 ];
sceneModels[0].nPhong= 1000;

//MERCURIO
sceneModels.push( new sphereModel( 5 ) );
sceneModels[1].sx *= 0.1; sceneModels[1].sy *= 0.1; sceneModels[1].sz *= 0.1;
sceneModels[1].tx = 0.14;
sceneModels[1].kAmbi = [ 0.25, 0.21, 0.21 ];
sceneModels[1].kDiff = [ 1.0, 0.83, 0.92 ];
sceneModels[1].kSpec = [ 0.3, 0.3, 0.3 ];
sceneModels[1].nPhong= 11.26;

//Venus
sceneModels.push( new sphereModel( 5 ) );
sceneModels[2].sx *= 0.2; sceneModels[2].sy *= 0.2; sceneModels[2].sz *= 0.2;
sceneModels[2].tx = 0.18;
sceneModels[2].kAmbi = [ 0.23, 0.09, 0.03 ];
sceneModels[2].kDiff = [ 0.55, 0.21, 0.07 ];
sceneModels[2].kSpec = [ 0.58, 0.22, 0.07 ];
sceneModels[2].nPhong= 100.2;

//Terra
sceneModels.push( new sphereModel( 5 ) );
sceneModels[3].sx *= 0.3; sceneModels[3].sy *= 0.3; sceneModels[3].sz *= 0.3;
sceneModels[3].tx = 0.26;
sceneModels[3].kAmbi = [ 0.14, 0.22, 0.16 ];
sceneModels[3].kDiff = [ 0.54, 0.89, 0.63 ];
sceneModels[3].kSpec = [ 0.32, 0.32, 0.32 ];
sceneModels[3].nPhong= 50.8;

//Marte
sceneModels.push( new sphereModel( 5 ) );
sceneModels[4].sx *= 0.175; sceneModels[4].sy *= 0.175; sceneModels[4].sz *= 0.175;
sceneModels[4].tx = 0.34;
sceneModels[4].kAmbi = [ 1.0, 0.0, 0.0 ];
sceneModels[4].kDiff = [ 1.0, 0.0, 0.0 ];
sceneModels[4].kSpec = [ 1.0, 0.0, 0.0 ];
sceneModels[4].nPhong= 50.0;

//Jupiter
sceneModels.push( new sphereModel( 5 ) );
sceneModels[5].sx *= 0.57; sceneModels[5].sy *= 0.57; sceneModels[5].sz *= 0.57;
sceneModels[5].tx = 0.497;
sceneModels[5].kAmbi = [ 0.2, 0.13, 0.05 ];
sceneModels[5].kDiff = [ 0.7, 0.43, 0.18 ];
sceneModels[5].kSpec = [ 0.4, 0.27, 0.17 ];
sceneModels[5].nPhong= 25.0;

//Saturno
sceneModels.push( new sphereModel( 5 ) );
sceneModels[6].sx *= 0.55; sceneModels[6].sy *= 0.55; sceneModels[6].sz *= 0.55;
sceneModels[6].tx = 0.68;
sceneModels[6].kAmbi = [ 0.4, 0.26, 0.1 ];
sceneModels[6].kDiff = [ 1.4, 0.86, 0.36 ];
sceneModels[6].kSpec = [ 0.8, 0.54, 0.34 ];
sceneModels[6].nPhong= 125.0;

//Urano
sceneModels.push( new sphereModel( 5 ) );
sceneModels[7].sx *= 0.425; sceneModels[7].sy *= 0.425; sceneModels[7].sz *= 0.425;
sceneModels[7].tx = 0.85;
sceneModels[7].kAmbi = [ 0.0, 0.05, 0.05 ];
sceneModels[7].kDiff = [ 0.4, 0.5, 0.5 ];
sceneModels[7].kSpec = [ 0.04, 0.7, 0.7 ];
sceneModels[7].nPhong= 10.0;

//Neptuno
sceneModels.push( new sphereModel( 5 ) );
sceneModels[8].sx *= 0.28; sceneModels[8].sy *= 0.28; sceneModels[8].sz *= 0.28;
sceneModels[8].tx = 0.95;
sceneModels[8].kAmbi = [ 0.0, 0.0, 0.5 ];
sceneModels[8].kDiff = [ 0.0, 0.0, 1.0 ];
sceneModels[8].kSpec = [ 1.0, 1.0, 1.0 ];
sceneModels[8].nPhong= 125.0;

	for(var u=9; u<100; u++){
		sceneModels.push( new sphereModel( 1) );
		sceneModels[u].sx *= 0.05; sceneModels[u].sy *= 0.05; sceneModels[u].sz *= 0.05;
		sceneModels[u].tx = 0.42;
		if(u<=50){
			sceneModels[u].ty = -0.1*Math.random();
		}else{
			sceneModels[u].ty = 0.1*Math.random();
		}
		
		sceneModels[u].kAmbi = [ 0.25, 0.21, 0.21 ];
		sceneModels[u].kDiff = [ 1.0, 0.83, 0.92 ];
		sceneModels[u].kSpec = [ 0.3, 0.3, 0.3 ];
		sceneModels[u].nPhong= 110.26;
	}








