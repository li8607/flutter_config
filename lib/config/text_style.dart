import 'package:flutter/material.dart';

import 'config_group_widget.dart';

class TextStyleWidget extends StatefulWidget {
  final ValueChanged<TextStyle> onChange;
  final TextStyle textStyle;

  TextStyleWidget({Key key, this.textStyle, this.onChange}) : super(key: key);

  @override
  _TextStyleWidgetState createState() => _TextStyleWidgetState();
}

class _TextStyleWidgetState extends State<TextStyleWidget> {
  Map<String, Object> configs;

  @override
  void initState() {
    TextStyle textStyle = widget.textStyle ?? TextStyle();
    configs = {
      "color": textStyle.color,
      "inherit": textStyle.inherit,
      "backgroundColor": textStyle.backgroundColor,
      "fontSize": textStyle.fontSize,
      "fontWeight": textStyle.fontWeight,
      "fontStyle": textStyle.fontStyle,
      "letterSpacing": textStyle.letterSpacing,
      "wordSpacing": textStyle.wordSpacing,
      "textBaseline": textStyle.textBaseline,
      "height": textStyle.height,
      "locale": textStyle.locale,
      "foreground": textStyle.foreground,
      "background": textStyle.background,
      "shadows": textStyle.shadows,
      "fontFeatures": textStyle.fontFeatures,
      "decoration": textStyle.decoration,
      "decorationColor": textStyle.decorationColor,
      "decorationStyle": textStyle.decorationStyle,
      "decorationThickness": textStyle.decorationThickness,
      "debugLabel": textStyle.debugLabel,
      "fontFamily": textStyle.fontFamily,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ConfigGroupWidget(
          onChange: (value) {
            TextStyle textStyle = TextStyle(
              color: value["color"],
              inherit: value["inherit"],
              backgroundColor: value["backgroundColor"],
              fontSize: value["fontSize"],
              fontWeight: value["fontWeight"],
              fontStyle: value["fontStyle"],
              letterSpacing: value["letterSpacing"],
              wordSpacing: value["wordSpacing"],
              textBaseline: value["textBaseline"],
              height: value["height"],
              locale: value["locale"],
              foreground: value["foreground"],
              background: value["background"],
              shadows: value["shadows"],
              fontFeatures: value["fontFeatures"],
              decoration: value["decoration"],
              decorationColor: value["decorationColor"],
              decorationStyle: value["decorationStyle"],
              decorationThickness: value["decorationThickness"],
              debugLabel: value["debugLabel"],
              fontFamily: value["fontFamily"],
            );
            widget.onChange(textStyle);
          },
          configs: configs,
        ));
  }
}
