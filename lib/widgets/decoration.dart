import 'package:flutter/material.dart';

class DecorationDemo extends StatefulWidget {
  @override
  _DecorationDemoState createState() => _DecorationDemoState();
}

class _DecorationDemoState extends State<DecorationDemo> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
    );
  }
}

class DecorationConfig {
  Color color;
  DecorationImage image;
  BoxBorder border;
  BorderRadiusGeometry borderRadius;
  List<BoxShadow> boxShadow;
  Gradient gradient;
  BlendMode backgroundBlendMode;
  BoxShape shape;
}
