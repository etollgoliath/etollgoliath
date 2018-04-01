
function submit1()
     {
  
  
   var name1=document.getElementById("Name").value; 
 
         
  var mail=document.getElementById("Email").value;
   
   var web=document.getElementById("Website").value;
  
   var sub=document.getElementById("Subject").value;
   
   var body=document.getElementById("txt").value;
   
  
         
   
      
         
    // firebase.database().ref('users').set({
    var firebaseRef=firebase.database().ref().child('comments');
    
    firebaseRef.push().set(
            {
          
     name: name1,
    mail: mail,
    website:web,
    subject:sub,
    body:body
   
  });
   window.alert("feedback  added");
    
      
 }


