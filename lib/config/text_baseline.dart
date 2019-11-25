import 'package:flutter/material.dart';

class TextBaselineWidget extends StatefulWidget {
  final ValueChanged<TextBaseline> onChange;
  final TextBaseline textBaseline;
  TextBaselineWidget({Key key, this.textBaseline, this.onChange})
      : super(key: key);

  @override
  _TextBaselineWidgetState createState() => _TextBaselineWidgetState();
}

class _TextBaselineWidgetState extends State<TextBaselineWidget> {
  TextBaseline _groupValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Expanded(
          child: RadioListTile(
            value: TextBaseline.alphabetic,
            title: Text("alphabetic"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            value: TextBaseline.ideographic,
            title: Text("ideographic"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        )
      ],
    ));
  }
}
