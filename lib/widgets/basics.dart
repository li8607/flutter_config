import 'package:flutter/material.dart';
import 'package:flutter_widget/model/column_info.dart';

class BasicsWidget extends StatefulWidget {
  BasicsWidget({Key key}) : super(key: key);

  _BasicsWidgetState createState() => _BasicsWidgetState();
}

class _BasicsWidgetState extends State<BasicsWidget> {
  @override
  Widget build(BuildContext context) {
    ColumnInfo columnInfo = ModalRoute.of(context).settings.arguments;
    List<ColumnInfo> list = columnInfo.childs;
    return Scaffold(
      appBar: AppBar(
        title: Text(columnInfo.title),
      ),
      body: Container(
        child: GridView.builder(
          padding: EdgeInsets.all(20.0),
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 0.5),
          itemBuilder: (BuildContext context, int index) {
            return _child(list[index]);
          },
        ),
      ),
    );
  }

  void _click(ColumnInfo info) {
    Navigator.of(context)
        .pushNamed(info.routeName, arguments: info);
  }

  Widget _child(ColumnInfo info) {
    return InkWell(
      onTap: (){
          _click(info);
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.blue[800]),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('images/lake.jpg'),
            ),
            Container(
              child: Text(
                info.title,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  info.subTitle,
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
