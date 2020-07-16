import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'TwoPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('com.hc.flutter');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network("https://t9.baidu.com/it/u=1761131378,1355750940&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1584429310&t=a84eeb1e9e21067c7117fbf058442a1f",width: 50,height: 50,),
            RaisedButton(
              child:Text("跳转"),
              onPressed: (){
//                platform.invokeMethod('load');
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new TwoPage()),);              },
            ),

            RaisedButton(
              child:Text("加载"),
              onPressed: (){
                platform.invokeMethod('load');
              },
            ),

            RaisedButton(
              child: Text("重启 fixed"),
              onPressed: (){
                platform.invokeMethod('restart');
              },
            ),

          ],
        ),
      ),


    );
  }
}
