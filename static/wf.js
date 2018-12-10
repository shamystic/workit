var totalbuttons = document.getElementsByClassName('buttons');
var divSet = new Set();
var removals = document.getElementsByClassName('remove');

function buttonpush(butid, butval){
  //alert('button pressed');
  var div = document.getElementById(butid +"-text");
  
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
    var x = document.createElement("INPUT");
   x.className = 'hide';
    
 x.type = "checkbox";
    x.value= butval; 
    x.name = butid;
    x.id = newbutid +"-check";
    x.checked = true;
    
    document.getElementById("form").appendChild(x);
    
document.getElementById(newbutid).addEventListener("click", function(){
    removebuttons(newbutid);
});
  }
}

function removebuttons(butid){
  divSet.delete(butid);
 
  var nobut = document.getElementById(butid);
 nobut.parentNode.removeChild(nobut);
 // var nocheck = document.getElementById(butid +"-check");
 //  nocheck.parentNode.removeChild(nocheck);
 
  
  
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