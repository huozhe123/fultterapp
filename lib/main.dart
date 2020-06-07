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
        body: customButton(),
      )
    );
  }
}
class ContentWidget extends StatefulWidget{
  ContentWidget(){
    print("contentwidget的构造函数被调用");
  }
  @override
  State createState() {
    return ContentWidgetState();
  }
}
class ContentWidgetState extends State<ContentWidget>{
  ContentWidgetState(){
    print("ContentWidgetState的构造函数被调用");
  }

  @override
  void initState() {
    super.initState();
    print("ContentWidgetState的initState被调用");
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ContentWidgetState的didChangeDependencies被调用了");
  }

  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("ContentWidgetState的didUpdateWidget被调用了");
  }

  @override
  Widget build(BuildContext context) {
    print("ContentWidgetState的build被调用了");
    return Center(
      child: Text("Hello fddddddddddddddddddddddddddddddddddddddddddddddworld",
        style: TextStyle(
          fontSize: 30,color: Color(0xff00ff00)),
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines:1,
          textScaleFactor: 2,),
    );
  }
}
class TextRich extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: [
        TextSpan(text:'张三',style: TextStyle(fontSize: 40)),
        TextSpan(text:'李四',style: TextStyle(fontSize: 10))
      ]
    ));
  }
}
class ButtonWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("btn1"),
          onPressed: (){
            print("raise button click");
          },
        ),
        FlatButton(
          child: Text("btn2"),
          onPressed: ()=>print("flat button click"),
        ),
        OutlineButton(
          child: Text("btn3"),
          onPressed: ()=>print("btn3 button click"),
        ),
        FloatingActionButton(
          child: Text("btn4"),
          onPressed: ()=>print("btn4 button click"),
        )
      ],
    );
  }
}
//自定义button
class customButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.people,color: Colors.white,),
            SizedBox(width: 10,)
          ],
        ),
        color: Colors.red,
        onPressed: ()=>print("自定义按钮点击"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8) //圆角
        ),
      ),
    );
  }
}














