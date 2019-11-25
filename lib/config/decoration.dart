import 'package:flutter/material.dart';

import 'config_group_widget.dart';

class DecorationWidget extends StatefulWidget {
  final ValueChanged<BoxDecoration> onChange;
  final BoxDecoration decoration;
  DecorationWidget({Key key, this.decoration, this.onChange}) : super(key: key);

  @override
  _DecorationWidgetState createState() => _DecorationWidgetState();
}

class _DecorationWidgetState extends State<DecorationWidget> {
  Map<String, Object> configs;

  @override
  void initState() {
    BoxDecoration decoration = widget.decoration ?? BoxDecoration();
    configs = {
      "color": decoration.color,
      "image": decoration.image,
      "border": decoration.border,
      "borderRadius": decoration.borderRadius,
      "boxShadow": decoration.boxShadow,
      "gradient": decoration.gradient,
      "backgroundBlendMode": decoration.backgroundBlendMode,
      "shape": decoration.shape
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        color: Colors.white,
        child: ConfigGroupWidget(
          onChange: (value) {
            BoxDecoration decoration = BoxDecoration(
                color: value["color"],
                image: value["image"],
                border: value["border"],
                borderRadius: value["borderRadius"],
                boxShadow: value["boxShadow"],
                gradient: value["gradient"],
                backgroundBlendMode: value["backgroundBlendMode"],
                shape: value["shape"] ?? BoxShape.rectangle);
            widget.onChange(decoration);
          },
          configs: configs,
        ));
  }
}

Widget _card(Widget child, {String title}) {
  List<Widget> list = List();

  Widget widget;
  if (title != null) {
    widget = Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      alignment: Alignment.center,
      child: Text(title, style: TextStyle(fontSize: 16.0, color: Colors.white)),
    );
    list.add(widget);
  }

  list.add(child);
  return Card(
      color: Colors.deepPurpleAccent,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      clipBehavior: Clip.antiAlias,
      semanticContainer: false,
      child: Column(
        children: list,
      ));
}
