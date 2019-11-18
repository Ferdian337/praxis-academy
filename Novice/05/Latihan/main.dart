import 'dart:async';
import 'dart:io';

void main(){
  var dot = new List(5);
  var tmp = "";
  for (var i=0; i<5; i++){
    dot[i] = tmp + ".";
    tmp = tmp + ".";
  }
  var d = false;
  
  Future.delayed(
    const Duration(seconds: 3),
    () => 50,
  ).then((nilai){
    print('$nilai.');
  });

  while (d = false){
  Future.delayed(
    const Duration(milliseconds: 5),
    () => 50,
  ).then((nilai){
    for (var i=0; i<5; i++){ 
    stdout.write('Menunggu' + dot[i]);
    }
  });
  }



// StreamController stream = StreamController();
// stream.stream.listen((data){
//   stdout.write('${data}');
// });

// print(dot);
// for (var i=0; i<5; i++){
//   stream.sink.add(dot[i]);
// }

// stream.sink.close();
}
