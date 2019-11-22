import 'package:flutter/material.dart';

class DoubleWidget extends StatefulWidget {
  String title;
  ValueChanged<String> onChange;
  DoubleWidget({Key key, @required this.title, this.onChange})
      : super(key: key);

  @override
  _DoubleWidgetState createState() => _DoubleWidgetState();
}

class _DoubleWidgetState extends State<DoubleWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        widget.onChange(value);
      },
      decoration: InputDecoration(labelText: widget.title),
      keyboardType: TextInputType.number,
    );
  }
}
