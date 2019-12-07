import 'package:flutter/material.dart';

class TableDetailTest extends StatefulWidget {
  @override
  _TableDetailTestState createState() => _TableDetailTestState();
}

class _TableDetailTestState extends State<TableDetailTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "table加载数据和刷新",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      //listview的构造方法有3中，普通的listview  listview.builder和listview.seperated三种
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              
            );
          }),
    );
  }

  var dataArray = <ItemModel>[]{
    var list = [];
    for (var i = 0; i < 20; i++) {
      var model = ItemModel();
      model.title = "";
      model.author = "";
    }
  }
}

class ItemModel {
  ImageProvider image;
  var title = "标题";
  var author = "作者";
  var summary = "内容简介：家的福利啦卡到开了房拉开法考虑的发生拉拉裤阿斯兰发是；按时； 克拉科夫啊；；发；打开；了啊；了看；是；拉手孔收款方理解上课了收款码法拉盛";
}

class TableCellView extends StatelessWidget {
  ItemModel record;

  @override
  Widget build(BuildContext context) {
    var headIcon = Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        image: new DecorationImage(image: NetworkImage("http://b.hiphotos.baidu.com/image/pic/item/908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg")),
        shape: BoxShape.circle
      ),
    );

    var center = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          record.title,
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            record.author,
            style: TextStyle(fontSize: 11)
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            record.summary,
            style: TextStyle(fontSize: 11,color:Colors.lightGreen)
          ),
        )
      ],
    );

    var item = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 10,),
        headIcon,
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: center,),
        SizedBox(width: 10,),
      ],
    );

    return Card(
      elevation: 5,
      child: InkWell(
        onTap: null,
        child: Padding(padding: EdgeInsets.all(10),child: item,),
      ),
    );
  }
}