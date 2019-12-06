import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List<String> dataArray(){
    List<String> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(i.toString());
    }
    return list;
  }

  Widget item(String title){
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
      ),
      color: Colors.cyan,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "网格视图grid",
          style: TextStyle(fontSize: 20,color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: dataArray().length,
        itemBuilder: (BuildContext context,int index) {
          return item(dataArray()[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
        ),
        
      ),
    );
  }
}