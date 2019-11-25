import 'package:flutter/material.dart';

class TextDirectionWidget extends StatefulWidget {
  final ValueChanged<TextDirection> onChange;
  final TextDirection textDirection;
  TextDirectionWidget({Key key, this.textDirection, this.onChange})
      : super(key: key);

  _TextDirectionWidgetState createState() => _TextDirectionWidgetState();
}

class _TextDirectionWidgetState extends State<TextDirectionWidget> {
  TextDirection _groupValue;

  @override
  void initState() {
    _groupValue = widget.textDirection;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: TextDirection.ltr,
            title: Text("ltr"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: TextDirection.rtl,
            title: Text("rtl"),
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
