import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'RSSDemo/RSSDemo.dart';
import 'package:expandable/expandable.dart';
import './kajto.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 10,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('Welcome to Corominder!',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: new Image.network('https://prudensai.pl/corominder.png'),
        backgroundColor: Colors.grey,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Wash your hands!"),
        loaderColor: Colors.blue
    );
  }
}

class MyItem{
  MyItem({this.isExpanded: false, this.header, this.body});
  bool isExpanded;
  final String header;
  final String body;

}


class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
      '/kajto': (BuildContext context) => new MyApp1(),
    },
      debugShowCheckedModeBanner: false,
      title: 'RSS',
      home: new RSSDemo(),
    );
  }

}
