import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class RowDemo extends StatefulWidget {
  @override
  _RowDemoState createState() => _RowDemoState();
}

class _RowDemoState extends State<RowDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "mainAxisAlignment": null,
      "mainAxisSize": null,
      "crossAxisAlignment": null,
      "textDirection": null,
      "verticalDirection": null,
      "textBaseline": null,
      "children": null
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        onChange: (value) {
          setState(() {
            configs = value;
          });
        },
        configs: configs,
        child: Container(
          color: Color.fromARGB(33, 33, 33, 33),
          child: Row(
            mainAxisAlignment:
                configs["mainAxisAlignment"] ?? MainAxisAlignment.start,
            mainAxisSize: configs["mainAxisSize"] ?? MainAxisSize.max,
            crossAxisAlignment:
                configs["crossAxisAlignment"] ?? CrossAxisAlignment.center,
            textDirection: configs["textDirection"],
            verticalDirection:
                configs["verticalDirection"] ?? VerticalDirection.down,
            textBaseline: configs["textBaseline"],
            children: configs["children"] ?? <Widget>[],
          ),
        ));
  }
}
