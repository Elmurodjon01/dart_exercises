//to use await, we must have async in the method
import 'dart:async';

void main(){
  print('the code started');
  showDownloadedImage();
  print('the code end');
  showResult();
}

showDownloadedImage() async {
  String downloaded = await downloadImage();
  print('it was one of a kind and ===> $downloaded');
}

 Future<String> downloadImage (){
  //in future, we will get a string value
  Future<String> result = Future.delayed(Duration(seconds: 5), (){
    return 'it\'s name was Teddy';
  });
  return result;
 }//this operation takes 5 seconds to load, or show

//Future and then
showResult()  {
  Future<String> download =  downloadImage();
  download.then((value) => print('wasn\'t it special, ===> $value'),);
}

//here, Future, and then can be used as async and await.