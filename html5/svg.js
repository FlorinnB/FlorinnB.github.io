window.addEventListener("deviceorientation",on_device_orientation);

function on_device_orientation(e)
{

	
	var svg=document.getElementById("id_svg");
	var circle=document.getElementById("id_cerc")
	
	var R=20;
	var svg_height = svg.getAttribute("height");
		var svg_width = svg.getAttribute("width");

	cerc.setAttribute("cx",svg_width/2 + e.gamma/90 * (svg_width/2 -R);
		cerc.setAttribute("cy",svg_height+e.beta/90*(svg_height/2-R));

	
	
}