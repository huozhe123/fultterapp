import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(wordPair.asPascalCase),
        ),
        body: RandomWords(),
      ),
    );
  }
}

class RandomWords extends StatefulWidget{

  @override
  State createState() => new RandomWordsState();
}
class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[]; //定义一个私有变量，数组存放生成的单词
  final _biggerFont = TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return _buildSuggestions();
  }
  //构建显示单词的ListView
  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context,i){ //ListView的每个item都会执行该方法
        if(i.isOdd){
          return new Divider();
        }
        final index = i~/2;
        if(index>= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }
  _buildRow(WordPair pair){
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

