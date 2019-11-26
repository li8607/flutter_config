import 'package:flutter/material.dart';

class StrutStyleWidget extends StatefulWidget {
  final ValueChanged<StrutStyle> onChange;
  final StrutStyle strutStyle;

  StrutStyleWidget({Key key, this.strutStyle, this.onChange}) : super(key: key);

  @override
  _StrutStyleWidgetState createState() => _StrutStyleWidgetState();
}

class _StrutStyleWidgetState extends State<StrutStyleWidget> {
  Map<String, Object> configs;

  @override
  void initState() {
    StrutStyle strutStyle = widget.strutStyle ?? StrutStyle();
    configs = {
      "fontSize": strutStyle.fontSize,
      "height": strutStyle.height,
      "leading": strutStyle.leading,
      "fontWeight": strutStyle.fontWeight,
      "fontStyle": strutStyle.fontStyle,
      "forceStrutHeight": strutStyle.forceStrutHeight,
      "debugLabel": null
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // this.fontSize,
    // this.height,
    // this.leading,
    // this.fontWeight,
    // this.fontStyle,
    // this.forceStrutHeight,
    // this.debugLabel,

    return Container();
  }
}
