import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//创建main函数
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text("chenss"),
        ),
        body: ContentWidget(),
      )
    );
  }
}

class ContentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();

  }
}
class ContentWidgetState extends State<ContentWidget>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  onPressed:(){
                    print("监听到按钮点击！！");
                    setState(() {
                      counter--;
                    });
                  },
                  child:Icon(Icons.close)
              ),
              RaisedButton(
                  onPressed:(){
                    print("监听到按钮点击！！");
                    setState(() {
                      counter++;
                    });
                  },
                  child:Icon(Icons.add)
              )
            ],
          ),
          Text("当前计数：$counter",style:TextStyle(fontSize: 25)),
        ],
      ),
    );
  }
}
//不能实现
//class ContextWidget extends StatelessWidget{
//  final int counter = 0;
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          RaisedButton(
//              onPressed:(){
//                print("监听到按钮点击！！");
//              },
//              child:Text('计数+1')
//          ),
//          Text("当前计数：$counter",style:TextStyle(fontSize: 25)),
//        ],
//      ),
//    );
//  }
//}