import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class TextDemo extends StatefulWidget {
  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "data": null,
      "style": null,
      "strutStyle": null,
      "textAlign": null,
      "textDirection": null,
      "locale": null,
      "softWrap": null,
      "overflow": null,
      "textScaleFactor": null,
      "maxLines": null,
      "semanticsLabel": null,
      "textWidthBasis": null,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: Text(
          configs["data"] ?? "",
          style: configs["style"],
          strutStyle: configs["strutStyle"],
          textAlign: configs["textAlign"],
          textDirection: configs["textDirection"],
          locale: configs["locale"],
          softWrap: configs["softWrap"],
          overflow: configs["overflow"],
          textScaleFactor: configs["textScaleFactor"],
          maxLines: configs["maxLines"],
          semanticsLabel: configs["semanticsLabel"],
          textWidthBasis: configs["textWidthBasis"],
        ));
  }
}
