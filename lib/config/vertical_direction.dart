import 'package:flutter/material.dart';

class VerticalDirectionWidget extends StatefulWidget {
  final ValueChanged<VerticalDirection> onChange;
  final VerticalDirection verticalDirection;
  VerticalDirectionWidget({Key key, this.verticalDirection, this.onChange})
      : super(key: key);

  _VerticalDirectionWidgetState createState() =>
      _VerticalDirectionWidgetState();
}

class _VerticalDirectionWidgetState extends State<VerticalDirectionWidget> {
  VerticalDirection _groupValue;

  @override
  void initState() {
    _groupValue = widget.verticalDirection;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: VerticalDirection.up,
            title: Text("up"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: VerticalDirection.down,
            title: Text("down"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
        ],
      ),
    );
  }
}
