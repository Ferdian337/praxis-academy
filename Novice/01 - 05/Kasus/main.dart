import 'dart:io';
import 'dart:convert';
import 'dart:async';

Future<String> printuser() async{
  var request = await HttpClient().getUrl(Uri.parse('http://jsonplaceholder.typicode.com/photos'));
  var response = await request.close();

  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
  }
}

void main() async{
  var write = await File('hasil.txt').writeAsString(await contents);
  print(await write.exists());
  print(await write.length());
  }