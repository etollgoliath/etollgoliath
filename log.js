
function submit3()
{
    alert("inside");
   var name1=document.getElementById("Name").value; 
 
         
  //var mail=document.getElementById("Password").value;
  var firebaseHeading =firebase.database().ref().child("name");
  
  firebaseHeadingRef.on('value',function(datasnapshot){
      name1.innerText=(datasnapshot.val());
      
      
  });
  
  
  
  
  
}
