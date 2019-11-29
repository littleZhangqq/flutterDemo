
import 'dart:math';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> with SingleTickerProviderStateMixin {
  TabController tabCtl;
  List<String> titles;

  @override
  void initState() {
    super.initState();
    titles = [
      "财经",
      "汽车",
      "当前",
      "读书",
      "美女",
      "游戏",
      "历史"
    ];
    tabCtl = TabController(
      length: titles.length,
      vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabCtl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _naviBar(),
      body: _tabView(),
    );
  }

  Widget _naviBar(){
    return AppBar(
      title: Text("横向滑动",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      elevation: 0,
      bottom: _topView()
    );
  }

  Widget _topView(){
    return TabBar(
      isScrollable: true,
      controller: tabCtl,
      labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
      labelColor: Colors.orange,
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.red,
      indicatorWeight: 3,
      tabs: titles.map((item){
        return Tab(text: item,);
      }).toList(),
    );
  }

  Widget _tabView(){
    return TabBarView(
      controller: tabCtl,
      children: titles.map((item){
        return Container(
          color: _getColor(),
          child: Center(
            child: Text(
              item,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Color _getColor(){
    var random = new Random();
    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);
    print(r);
    print(g);
    print(b);
    return Color.fromARGB(255, r, g, b);
  }
}