var t1 = (new Date()).getTime();

for(var i=0; i<100000; i++){
  // console.log(perform(i));
  perform(i);
}

var t2 = (new Date()).getTime();

console.log("nodejs time：" + (t2 - t1) + "ms");

function perform(i){
  var a = i + 1;
  var b = 2.3;
  var s = "helloworldhappynice Good Man";

  if(a > b) {
    ++a;
  }else{
    b = b + 1;
  }

  if(a == b){
    b = b + 1;
  }

  var c = a  * b + a / b - Math.pow(a, 2);

  var d = s.substring(0, s.indexOf("happy")) + c.toString();

  return d;
}
