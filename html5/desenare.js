document.getElementById("id_logic_version").innerHTML = "Bussiness version: 2018.10.22.3";
document.getElementById("id_start_button").addEventListener("click", start);
document.getElementById("id_stop_button").addEventListener("click", stop);
document.getElementById("id_start_button").disabled = false;
document.getElementById("id_stop_button").disabled = true;
var unghi={valoare:0};
//-----------------------------------------
function deseneaza_cerc(context, width, height, unghi)
{
	context.clearRect(0,0,width,height);
	context.beginPath();
	context.arc(width/2+100*Math.cos(unghi.valoare*Math.PI / 180), height/2 + Math.sin(unghi.valoare*Math.PI / 180)*100, 50, 0, 2*Math.PI); //adauga la path

	context.stroke(); // desenam
	unghi.valoare++;
}
//-----------------------------------------
function start()
{
	var canvas = document.getElementById("id_canvas");
	var context = canvas.getContext("2d");
	
	
	document.getElementById("id_start_button").disabled = true;
	document.getElementById("id_stop_button").disabled = false;
	my_worker.onmessage = function (e){
		documetn,getElementById("id_prime").innerHTML=e.data;
		
	}
	
	var my_worker=new Worker("calcul_prime.js");
	id_timer = setInterval(deseneaza_cerc, 10 , context,canvas.width , canvas.height, unghi );
	
	
}
//------------------------------------[]
function stop()
{
	document.getElementById("id_start_button").disabled = false;
	document.getElementById("id_stop_button").disabled = true;
	clearInterval(id_timer);


}