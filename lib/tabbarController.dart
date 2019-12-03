import 'package:flutter/material.dart';
import 'package:testdemo/controllers/firstController.dart';
import 'package:testdemo/controllers/secondController.dart';
import 'package:testdemo/controllers/thirdController.dart';
import 'package:testdemo/controllers/fourthController.dart';

class TabbarViewController extends StatefulWidget {
  @override
  _TabbarViewControllerState createState() => _TabbarViewControllerState();
}

class _TabbarViewControllerState extends State<TabbarViewController> {
  var _selectIndex = 0;
  var viewcontrollers = [
    HomePage(),
    Product(),
    Exchange(),
    Mine()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: viewcontrollers.elementAt(_selectIndex),
      ),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _bottomBar(){
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          title: Text("list"),
          icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
          title: Text("scrollList"),
          icon: Icon(Icons.shop)
        ),
        BottomNavigationBarItem(
          title: Text("other"),
          icon: Icon(Icons.chat)
        ),
        BottomNavigationBarItem(
          title: Text("mine"),
          icon: Icon(Icons.person)
        )
      ],
      currentIndex: _selectIndex,
      selectedItemColor: Colors.cyan,
      unselectedItemColor: Colors.deepPurple,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: tapItemClick,
    );
  }

  void tapItemClick(int index){
    setState(() {
      _selectIndex = index;
    });
  }

}
