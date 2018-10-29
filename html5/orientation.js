
window.addEventListener("deviceorientation",on_device_orientation);



function on_device_orientation(e)
{
	document.getElementById("id_alpha").innerHTML=e.alpha;
	document.getElementById("id_beta").innerHTML=e.beta;
	document.getElementById("id_gamma").innerHTML=e.gamma;
}