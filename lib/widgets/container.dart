
import 'package:flutter/material.dart';
import 'package:flutter_widget/model/column_info.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColumnInfo info = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(info.title),),
      body: Container(
        
      ),
    );
  }
}