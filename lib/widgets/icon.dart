import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class IconDemo extends StatefulWidget {
  @override
  _IconDemoState createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "icon": null,
      "size": null,
      "color": null,
      "semanticLabel": null,
      "textDirection": null,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: Icon(
          configs["icon"],
          size: configs["size"],
          color: configs["color"],
          semanticLabel: configs["semanticLabel"],
          textDirection: configs["textDirection"],
        ));
  }
}
