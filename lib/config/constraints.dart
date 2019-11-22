import 'dart:math';

import 'package:flutter/material.dart';

class ConstraintsWidget extends StatefulWidget {
  final ValueChanged<BoxConstraints> onChange;
  ConstraintsWidget({Key key, this.onChange}) : super(key: key);
  @override
  _ConstraintsWidgetState createState() => _ConstraintsWidgetState();
}

class _ConstraintsWidgetState extends State<ConstraintsWidget> {
  double width, height;

  BoxConstraints createBoxConstraints() {
    return BoxConstraints.expand(width: width ?? 0, height: height ?? 0);
  }

  Widget expand() {
    return Column(
      children: <Widget>[
        Container(
            child: TextField(
          onChanged: (value) {
            width = double.parse(value);
            widget.onChange(createBoxConstraints());
          },
          decoration: InputDecoration(labelText: 'width'),
          keyboardType: TextInputType.number,
        )),
        Container(
            child: TextField(
          onChanged: (value) {
            height = double.parse(value);
            widget.onChange(createBoxConstraints());
          },
          decoration: InputDecoration(labelText: 'height'),
          keyboardType: TextInputType.number,
        ))
      ],
    );
  }

  String _groupValue = '';

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (_groupValue == 'expand') {
      child = expand();
    } else {
      child = Container();
    }
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: 'expand',
            title: Text('expand'),
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          child
        ],
      ),
    );
  }
}
