import 'package:flutter/material.dart';

class CrossAxisAlignmentWidget extends StatefulWidget {
  final ValueChanged<CrossAxisAlignment> onChange;
  final CrossAxisAlignment crossAxisAlignment;
  CrossAxisAlignmentWidget({Key key, this.crossAxisAlignment, this.onChange})
      : super(key: key);

  @override
  _CrossAxisAlignmentWidgetState createState() =>
      _CrossAxisAlignmentWidgetState();
}

class _CrossAxisAlignmentWidgetState extends State<CrossAxisAlignmentWidget> {
  CrossAxisAlignment _groupValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Expanded(
          child: RadioListTile(
            value: CrossAxisAlignment.baseline,
            title: Text("baseline"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            value: CrossAxisAlignment.center,
            title: Text("center"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            value: CrossAxisAlignment.end,
            title: Text("end"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            value: CrossAxisAlignment.start,
            title: Text("start"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            value: CrossAxisAlignment.stretch,
            title: Text("stretch"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ),
      ],
    ));
  }
}
