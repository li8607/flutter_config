import 'package:flutter/material.dart';

class MainAxisSizeWidget extends StatefulWidget {
  final ValueChanged<MainAxisSize> onChange;
  final MainAxisSize mainAxisSize;
  MainAxisSizeWidget({Key key, this.mainAxisSize, this.onChange})
      : super(key: key);

  _MainAxisSizeWidgetState createState() => _MainAxisSizeWidgetState();
}

class _MainAxisSizeWidgetState extends State<MainAxisSizeWidget> {
  MainAxisSize _groupValue;

  @override
  void initState() {
    _groupValue = widget.mainAxisSize;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: MainAxisSize.max,
            title: Text("max"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: MainAxisSize.min,
            title: Text("min"),
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
