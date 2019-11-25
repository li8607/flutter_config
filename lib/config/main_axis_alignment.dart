import 'package:flutter/material.dart';

class MainAxisAlignmentWidget extends StatefulWidget {
  final ValueChanged<MainAxisAlignment> onChange;
  final MainAxisAlignment mainAxisAlignment;
  MainAxisAlignmentWidget({Key key, this.mainAxisAlignment, this.onChange})
      : super(key: key);

  _MainAxisAlignmentWidgetState createState() =>
      _MainAxisAlignmentWidgetState();
}

class _MainAxisAlignmentWidgetState extends State<MainAxisAlignmentWidget> {
  MainAxisAlignment _groupValue;

  @override
  void initState() {
    _groupValue = widget.mainAxisAlignment;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: MainAxisAlignment.center,
            title: Text("center"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: MainAxisAlignment.end,
            title: Text("end"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: MainAxisAlignment.spaceAround,
            title: Text("spaceAround"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: MainAxisAlignment.spaceBetween,
            title: Text("spaceBetween"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: MainAxisAlignment.spaceEvenly,
            title: Text("spaceEvenly"),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(_groupValue);
            },
          ),
          RadioListTile(
            value: MainAxisAlignment.start,
            title: Text("start"),
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
