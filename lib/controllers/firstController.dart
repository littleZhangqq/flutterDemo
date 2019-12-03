
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("我是导航栏标题",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      body: new ListView.builder(
        itemBuilder: (context,index){
          return new PageItem();
        },
        itemCount: 20,
      ),
    );
  }
}

class PageItem extends StatefulWidget {
  @override
  _PageItemState createState() => _PageItemState();
}

class _PageItemState extends State<PageItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
       ///卡片包装
      child: new Card(
           ///增加点击效果
          child: new FlatButton(
              onPressed: (){
                print("点击了cell");
                // Navigator.of(context).pushNamed('/a');
              },
              child: new Padding(
                padding: new EdgeInsets.only(left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ///文本描述
                    new Container(
                        child: new Text(
                          "这是一点描述",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.0,
                          ),
                          ///最长三行，超过 ... 显示
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ), 
                        margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                        alignment: Alignment.topLeft),
                    new Padding(padding: EdgeInsets.all(10.0)),
                    ///三个平均分配的横向图标文字
                    new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.grey,
                        ),
                        new Image(
                            image: NetworkImage("https://yiqi-shenyang-test.oss-cn-beijing.aliyuncs.com/uploads/images/20191014/a6ead9d011a87ec96f32ad152173ebcf.jpg"),
                            height: 70,
                            fit: BoxFit.fitWidth,
                            filterQuality: FilterQuality.high,
                            alignment: Alignment.center,
                          ),
                      ],
                      
                    ),
                  ],
                ),
              ))),

    );
  }
}

//imageView
class InitImageView extends StatefulWidget {
  @override
  _InitImageViewState createState() => _InitImageViewState();
}

class _InitImageViewState extends State<InitImageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Image(
        image: NetworkImage("url"),
        fit: BoxFit.fill,
        alignment: Alignment.bottomCenter,
        height: 80,
        width: 100,
      ),
    );
  }
}

//listView
class InitListView extends StatefulWidget {
  @override
  _InitListViewState createState() => _InitListViewState();
}

class _InitListViewState extends State<InitListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemBuilder: (context,index){
          return new ListViewItem();
        },
        itemCount: 30,
      ),
    );
  }
}

class ListViewItem extends StatefulWidget {
  @override
  _ListViewItemState createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(
      "这是一段文字用来给Text这个文本显示用的",
      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
      textAlign: TextAlign.justify,
      softWrap: true,
      ),
    );
  }
}
