import 'package:flutter/material.dart';
import 'package:flutter_widget/config/config_group_widget.dart';
import 'package:flutter_widget/model/column_info.dart';

class DetailWidget extends StatefulWidget {
  final Map<String, Object> configs;
  final Widget child;
  final ValueChanged<Map<String, Object>> onChange;

  DetailWidget({Key key, this.configs, this.child, this.onChange})
      : super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {

  @override
  Widget build(BuildContext context) {
    ColumnInfo info = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(info.title),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue[200],
                      width: 2.0,
                      style: BorderStyle.solid)),
              width: double.maxFinite,
              height: 200.0,
              child: Stack(
                children: <Widget>[widget.child],
              ),
            ),
            Container(
              height: 100.0,
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.red[200],
                      width: 2.0,
                      style: BorderStyle.solid)),
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                child: Text(widget.configs.toString()),
              ),
            ),
            Expanded(
              child: ConfigGroupWidget(
                onChange: (value) {
                  setState(() {
                    widget.onChange(value);
                  });
                },
                configs: widget.configs,
              ),
            )
          ],
        ),
      ),
    );
  }
}
