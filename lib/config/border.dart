import 'package:flutter/material.dart';

import 'config_group_widget.dart';

class BoxBorderWidget extends StatefulWidget {
  final ValueChanged<BoxDecoration> onChange;
  final BoxBorder border;
  BoxBorderWidget({Key key, this.border, this.onChange}) : super(key: key);

  @override
  _BoxBorderWidgetState createState() => _BoxBorderWidgetState();
}

class _BoxBorderWidgetState extends State<BoxBorderWidget> {
  BorderSide top, left, bottom, right, value;
  Map<String, Object> config;
  @override
  void initState() {
    Border border = widget.border ?? Border();
    top = border.top;
    left = border.left;
    bottom = border.bottom;
    right = border.right;
    if (top.color == left.color &&
        top.color == bottom.color &&
        top.color == right.color &&
        top.width == left.width &&
        top.width == bottom.width &&
        top.width == right.width) {
      value = top;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(height: 200.0, color: Colors.white, child: null);
  }
}
