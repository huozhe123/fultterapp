import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//创建main函数
void main() {
  runApp() => MyApp();
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Hello world',
        home: Scaffold(
            appBar: AppBar(
                title: Center(
                    child:Text('我是标题')
                )
            ),
            body: Center(
              child: ContentWidget(),
            )
        )
    );
  }
}
class ContentWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text(
      'Hello world',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 30,
          color: Colors.amberAccent
      ));
  }
}