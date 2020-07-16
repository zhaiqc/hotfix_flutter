import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583834562530&di=5ba847a2488085edcfcce03b29eda5d6&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D3571592872%2C3353494284%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D1200%26h%3D1290",width: 90,height: 100,),




          ],
        ),
      ),


    );
  }
}
