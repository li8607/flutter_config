import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class PlaceholderDemo extends StatefulWidget {
  @override
  _PlaceholderDemoState createState() => _PlaceholderDemoState();
}

class _PlaceholderDemoState extends State<PlaceholderDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "color": const Color(0xFF455A64),
      "strokeWidth": 2.0,
      "fallbackWidth": 400.0,
      "fallbackHeight": 400.0,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: Placeholder(
          color: configs["color"],
          strokeWidth: configs["strokeWidth"],
          fallbackWidth: configs["fallbackWidth"],
          fallbackHeight: configs["fallbackHeight"],
        ));
  }
}
