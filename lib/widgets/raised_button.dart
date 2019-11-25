import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class RaisedButtonDemo extends StatefulWidget {
  @override
  _RaisedButtonDemoState createState() => _RaisedButtonDemoState();
}

class _RaisedButtonDemoState extends State<RaisedButtonDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "textTheme": null,
      "textColor": null,
      "disabledTextColor": null,
      "color": null,
      "disabledColor": null,
      "focusColor": null,
      "hoverColor": null,
      "highlightColor": null,
      "splashColor": null,
      "colorBrightness": null,
      "elevation": null,
      "focusElevation": null,
      "hoverElevation": null,
      "highlightElevation": null,
      "disabledElevation": null,
      "padding": null,
      "shape": null,
      "clipBehavior": null,
      "focusNode": null,
      "autofocus": null ?? false,
      "materialTapTargetSize": null,
      "animationDuration": null,
      "child": null,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: RaisedButton(
          onPressed: () {},
          textTheme: configs["textTheme"],
          textColor: configs["textColor"],
          disabledTextColor: configs["disabledTextColor"],
          color: configs["color"],
          disabledColor: configs["disabledColor"],
          focusColor: configs["focusColor"],
          hoverColor: configs["hoverColor"],
          highlightColor: configs["highlightColor"],
          splashColor: configs["splashColor"],
          colorBrightness: configs["colorBrightness"],
          elevation: configs["elevation"],
          focusElevation: configs["focusElevation"],
          hoverElevation: configs["hoverElevation"],
          highlightElevation: configs["highlightElevation"],
          disabledElevation: configs["disabledElevation"],
          padding: configs["padding"],
          shape: configs["shape"],
          clipBehavior: configs["clipBehavior"],
          focusNode: configs["focusNode"],
          autofocus: configs["autofocus"],
          materialTapTargetSize: configs["materialTapTargetSize"],
          animationDuration: configs["animationDuration"],
          child: configs["child"],
        ));
  }
}
