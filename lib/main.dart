import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//创建main函数
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'hdjs',
      home: Scaffold(
        appBar: AppBar(
          title: Text("chenss",textDirection: TextDirection.ltr,)
        ),
        body: Text("hello",textDirection: TextDirection.ltr,)
      )
    );
  }
}