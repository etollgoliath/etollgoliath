alert("hello");
function submitF()
{
    alert("hello in ");
    //var r=document.getElementById('result').value;
    //alert("result is"+result);
   // var ref = firebase.database().ref();
//retrieval
var ref = firebase.database().ref("mail");

ref.on("value", function(snapshot) {
    alert("value is "+snapshot.value);
   console.log(snapshot.val());
}, function (error) {
   console.log("Error: " + error.code);
});
    
    var Ref = firebase.database().ref("travelLoc");

Ref.update ({
   "cost": 20
});
    
}

