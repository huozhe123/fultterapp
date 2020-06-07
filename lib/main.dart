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
      home: Scaffold(
        appBar: AppBar(
          title: Text("chenss"),
        ),
        body: HomeContent(),
      )
    );
  }
}
class HomeContent extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView( //ListView包裹超出部分隐藏，可滚动显示
        children: <Widget>[
          ProductItem("Apple1","macbook1","https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.png"),
          ProductItem("Apple2","macbook2","https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.png"),
          ProductItem("Apple3","macbook3","https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/bd_logo1_31bdc765.png"),
        ],
      )
    );
  }
}
class ProductItem extends StatelessWidget{
  final String title;
  final String subTitle;
  final String imageUrl;
  ProductItem(this.title,this.subTitle,this.imageUrl);//简写形式
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(width: 3)
      ),
      child: Column(
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 20),),
          Text(subTitle,style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),//间距
          Image.network(imageUrl)
        ],
      ),
    );
  }
}