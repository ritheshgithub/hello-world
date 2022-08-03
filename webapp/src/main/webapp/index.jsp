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
  <h2>Example of Web Worker</h2>
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
<p><b>Note: gitbash-->jenkins-->ansible(dockerhub)-->kubernetes(eks).......
  gitbash-->jenkins-->ansible(dockerhub)-->kubernetes(eks)
  gitbash-->jenkins-->ansible(dockerhub)-->kubernetes(eks)</b></p>
</body>
</html>
