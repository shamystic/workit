var totalbuttons = document.getElementsByClassName('buttons');
var divSet = new Set();
var removals = document.getElementsByClassName('remove');

function buttonpush(butid, butval){
  //alert('button pressed');
  var div =       document.getElementById(butid +"-text");
  
var newbutval = butval.replace(/\s/g,''); 
  //alert(newbutval);
  var newbutid = butid +"-text" +newbutval;
  if (!divSet.has(newbutid)){
    divSet.add(newbutid);
   
    var newbut = document.createElement("BUTTON");
    newbut.innerHTML = butval;
    newbut.id = newbutid;
  div.appendChild(newbut);
    newbut.className = 'remove';
    
document.getElementById(newbutid).addEventListener("click", function(){
    removebuttons(newbutid);
});
  }
}

function removebuttons(butid){
  divSet.delete(butid);
 
  var nobut = document.getElementById(butid);
 nobut.parentNode.removeChild(nobut);
 
  
  
}
for (var i=0 ; i < totalbuttons.length ; i++){
  (function(ind){
    totalbuttons[ind].onclick = function(){
      buttonpush(totalbuttons[ind].id,totalbuttons[ind].value);
    };})(i) }

for (var i=0 ; i < removals.length ; i++){
  (function(ind){
    removals[ind].onclick = function(){
      removebuttons(removals[ind].id);
    };})(i) }

// <div class = "exercise-container">
//         {% for item in body_parts %}
//             <h2>{{item.body_part}}</h2>
//         <div class = "container">
//             <div class="dropdown">
//             <button class="dropbtn">Dropdown</button>
//             <div class="dropdown-content">
//         {% for exercise in exercises %}
//         {% if exercise.body_part == item.body_part %}
  
//             <button type = "button" class = "buttons" value = "{{exercise.name}}" id = "quad"> {{exercise.name}} </button>
//     {% endif %}
//             {% endfor %}
//   </div>
// </div>