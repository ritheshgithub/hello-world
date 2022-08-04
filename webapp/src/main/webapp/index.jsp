<!DOCTYPE html>
<html>
<head>
  <style>
    .div1{
      margin-left: 350px;
    }
  </style>
</head>
<body>
<!-- Sqaure Output Result -->
<div class="div1">
  <h2>Web Worker Test </h2>
<label>Enter the number to find the square</label>
<br><input type="text" name="num" id="num"><br>
<br><button id="submit">Submit</button>
<button id="other">Wait</button>
<div id="text"></div>
</div>
<script type="text/javascript">

document.getElementById("other").onclick=function() {
  alert("Hey! Web Worker is working, and you can wait for the result.");
}

//Web-worker Code.....
  var worker= new Worker("worker.js");
  worker.onmessage= function(event){
  document.getElementById("text").innerText= event.data;}
  document.getElementById("submit").onclick= function(){
  var num= document.getElementById("num").value;
  worker.postMessage(num);
 }
</script>
<p><b>>Note:CI and CD stand for continuous integration and continuous delivery/continuous deployment. In very simple terms, CI is a modern software development practice in which incremental code changes are made frequently and reliably.
	Note:CI and CD stand for continuous integration and continuous delivery/continuous deployment. In very simple terms, CI is a modern software development practice in which incremental code changes are made frequently and reliably. </b></p>
</body>
</html>
