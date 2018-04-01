alert("hello");
////var name=document.getElementById("First Name").value();
  //    var sname=document.getElementById("Name").value;
 /**function submitF(String name,String sname)
 {
   this.name=First Name;
   this.sname=Last Name;
/**var mail=document.getElementById("Email");
var aadhar=document.getElementById("Aadhaar No");
var password=document.getElementById("Password");
var mobile=document.getElementById("mobile");
     
     
    
     
     firebaseRef.push().set(fname);**/
     function submitF()
     {
         var qr=59999;
         qr++;
   var name=document.getElementById("First Name").value; 
   
   var lname=document.getElementById("Last Name").value; 
   var mail=document.getElementById("Email").value;
   var aadhar=document.getElementById("Aadhaar No").value;
   var pass=document.getElementById("Password").value;
   var pass2=document.getElementById("pass2").value;
   var mobile=document.getElementById("mobile").value;
  
   /**alert("name is "+name);
         alert("lname is "+lname);
   alert("email is "+mail);
   alert("aadhar"+ aadhar);
   alert("pass"+pass);
   alert("mobile"+mobile);**/
      
         
    // firebase.database().ref('users').set({
    var c=0;
   var firebaseRef=firebase.database().ref().child('users');
    if(pass!=pass2)
       {
           alert("password mismatch");
           c=1;
       }
       if(c!=1)
       {
    firebaseRef.push().set(
            {
        

       username: name,
    lastname: lname,
    mail:mail,
    aadhar:aadhar,
    password:pass,
    mobile:mobile,
    qrcode:qr
   
  });
  
 firebase.auth().createUserWithEmailAndPassword("email@yahoo.com", "password").catch(function(error) {
  // Handle Errors here.
  var errorCode = error.code;
  var errorMessage = error.message;
  // ...
});
     window.alert("Registered sucessfully");
 }
 if(c=1)
     return;
   // }
   // else
      
    
      
 }
 


