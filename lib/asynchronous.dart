void main() {
  print('main method is started');
  printFileContent();
  print('main method is ended');
}

//it will print file content after it download
printFileContent() {
  Future<String> fileData = downloadFile();
  var filedata;
  print('download file ${filedata}');
}

//it download a file        -[dommy long running file]
Future<String> downloadFile() {
  Future<String> fileData = Future.delayed(
    Duration(seconds: 5),
    (() {
      return 'the file has secret';
    }),
  );
  return fileData;
}
