'use strict;'
/*jslint devel: true*/ 

const mainmap_element = document.getElementById('mainmap');

let input_name = document.getElementById('name-event'); 
let input_img = document.getElementById('img-event'); 
let desc_text = document.getElementById('info_text'); 
let button = document.getElementById('button'); 

let image = document.getElementById('image-mapper-img'); 

let added_svg = mainmap_element.getElementsByClassName("image-mapper-point");

mainmap_element.ondblclick = function(Event) {

	deletePoint(added_svg);

	input_name.readOnly = false; 
	input_img.disabled = false; 
	info_text.readOnly = false; 
	button.disabled = false; 
/*
	while (mainmap_element.firstChild) {
    mainmap_element.removeChild(mainmap_element.firstChild);
}
*/
	let x = Event.offsetX;
	let y = Event.offsetY;

	let w = image.width;
	let h = image.height;

	let inputx = document.getElementById('cx');
	let inputy = document.getElementById('cy');

	let cross = document.createElementNS("http://www.w3.org/2000/svg",'circle');
    cross.setAttribute("class","image-mapper-point");
    cross.style.r="5";

	if(w<1100){
		let vbw = 1100;
		let vbh = 850;
		let rw = ((vbw / w) * x).toFixed(2);
		let rh = ((vbh / h) * y).toFixed(2);
		inputx.value = rw;
		inputy.value = rh;
		cross.style.cx=rw;
		cross.style.cy=rh;
	} else{
		inputx.value = x;
		inputy.value = y;
		cross.style.cx=x;
		cross.style.cy=y;
	}
	mainmap_element.appendChild(cross);
}

function isSend() {
	alert('We need to accumulate a One power to publish this data. Please, wait...');
   }

function deletePoint(svg_element) {
	for (let point of svg_element) {
		point.remove();
	}
   }

swordTop.onclick = function() {
      window.scrollTo(pageXOffset, 0);
  };

window.addEventListener('scroll', function() {
    	swordTop.hidden = (pageYOffset < document.documentElement.clientHeight);
 });