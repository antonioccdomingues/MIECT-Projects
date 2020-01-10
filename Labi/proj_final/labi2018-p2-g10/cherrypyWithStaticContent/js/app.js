$(document).ready(function(){
	$('#concluir').click(function(){
	var delay, reverb, tremolo, echo, nome,BPM, validor = false, crashpos="", hithatpos="", kickpos="", snarepos="";		
		
	if ( $('#delay').prop('checked') ) {
               delay = 'delay';
            } else {
                delay = "off";
            }
	if ( $('#reverb').prop('checked') ) {
               delay = 'reverb';
            } else {
                delay = "off";
            }
	if ( $('#echo').prop('checked') ) {
               echo = 'echo';
            } else {
                echo = "off";
            }
	if ( $('#tremolo').prop('checked') ) {
               tremolo = 'tremolo';
            } else {
                tremolo = "off";
            }

// Posições para o crash	
	for(var i = 0; i < 12; i++){
		var num = i.toString();		
		var x = "#1"+ num;
			
		if($(x).prop('checked')){
		crashpos = crashpos + num;
			}


		}
// Posições para o hithat	
	for(var i = 0; i < 12; i++){
		var num = i.toString();		
		var x = "#2"+ num;
			
		if($(x).prop('checked')){
		hithatpos = hithatpos + num;
			}


		}
// Posições para a snare	
	for(var i = 0; i < 12; i++){
		var num = i.toString();		
		var x = "#3"+ num;
			
		if($(x).prop('checked')){
		snarepos = snarepos + num;
			}


		}			
// Posições para o kick
	for(var i = 0; i < 12; i++){
		var num = i.toString();		
		var x = "#4"+ num;
			
		if($(x).prop('checked')){
		kickpos = kickpos + num;
			}


		}		

	nome = document.getElementById('nome').value;	
	BPM = document.getElementById('bpm').value;
//ver se os bpm são numeros	
	if (isNaN(BPM)){
	validor == true;
		}

var receita={"efeitos": [reverb,delay,tremolo,echo], "BPM": [BPM],"posições" : [crashpos, hithatpos, snarepos, kickpos]}
var jreceita = JSON.stringify(receita)
//if(validor == true){ está em comentario porque por algum motivo não deixa dar post
	$.post("/put",{ nome: nome, jreceita:jreceita
               });   
//}          

console.log("jreceita" + jreceita);          
console.log(BPM);  

	});
});