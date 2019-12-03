
import 'package:flutter/material.dart';
import 'package:testdemo/tabbarController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: TabbarViewController(),
    //跳转页面的路由   都在这里定暂时
      // routes: <String ,WidgetBuilder>{
      //   '/a': (BuildContext context) => new TabbarViewController(),
      // },
    );
  }
}



