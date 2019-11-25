import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class FlutterLogoDemo extends StatefulWidget {
  @override
  _FlutterLogoDemoState createState() => _FlutterLogoDemoState();
}

class _FlutterLogoDemoState extends State<FlutterLogoDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "size": null,
      "colors": null,
      "textColor": const Color(0xFF616161),
      "style": FlutterLogoStyle.markOnly,
      "duration": const Duration(milliseconds: 750),
      "curve": Curves.fastOutSlowIn,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: FlutterLogo(
          size: configs["size"],
          colors: configs["colors"],
          textColor: configs["textColor"],
          style: configs["style"],
          duration: configs["duration"],
          curve: configs["curve"],
        ));
  }
}
