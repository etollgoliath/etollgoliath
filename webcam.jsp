<%@page import="com.github.sarxos.webcam.Webcam"%>
<%@page import="com.google.zxing.Result"%>
<%@page import="com.google.zxing.NotFoundException"%>
<%@page import="com.google.zxing.MultiFormatReader"%>
<%@page import="com.google.zxing.client.j2se.BufferedImageLuminanceSource"%>
<%@page import="com.google.zxing.common.HybridBinarizer"%>
<%@page import="com.google.zxing.BinaryBitmap"%>
<%@page import="com.google.zxing.LuminanceSource"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="stuff, to, help, search, engines, not" name="keywords">
<meta content="What this page is about." name="description">
<meta content="Display Webcam Stream" name="title">
<title>Display Webcam Stream</title>


  <style>
#container {
    margin: 0px auto;
    width: 500px;
    height: 375px;
    border: 10px #333 solid;
}
#videoElement {
    width: 500px;
    height: 375px;
    background-color: #666;
}
</style>
  
  
</head>
  
<body>
    
    scan your qr code
<div id="container">
    <video autoplay="true" id="videoElement">
     
    </video>
</div>
    <script src="PATH/dist/qcode-decoder.min.js"></script>
<script>
 
 var video = document.querySelector("#videoElement");

navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia || navigator.oGetUserMedia;
 
if (navigator.getUserMedia) {       
    navigator.getUserMedia({video: true}, handleVideo, videoError);
}
 
function handleVideo(stream) {
    video.src = window.URL.createObjectURL(stream);
}
 
function videoError(e) {
   alert("something went wrong");
}


  

 





</script>




 
 

<%



    %>


</body>
</html>

