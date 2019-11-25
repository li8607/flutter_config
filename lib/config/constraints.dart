import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/config/width.dart';

class ConstraintsWidget extends StatefulWidget {
  final ValueChanged<BoxConstraints> onChange;
  final BoxConstraints constraints;
  ConstraintsWidget({Key key, this.constraints, this.onChange})
      : super(key: key);
  @override
  _ConstraintsWidgetState createState() => _ConstraintsWidgetState();
}

class _ConstraintsWidgetState extends State<ConstraintsWidget> {
  double width, height;

  @override
  void initState() {
    width = 200.0;
    height = 200.0;
    super.initState();
  }

  BoxConstraints createBoxConstraints() {
    return BoxConstraints.expand(width: width ?? 0, height: height ?? 0);
  }

  Widget expand() {
    return Column(
      children: <Widget>[
        DoubleWidget(
          title: 'width',
          hit: '请输入width',
          value: width,
          onChange: (value) {
            width = value;
            widget.onChange(createBoxConstraints());
          },
        ),
        DoubleWidget(
          title: 'height',
          hit: '请输入height',
          value: height,
          onChange: (value) {
            height = value;
            widget.onChange(createBoxConstraints());
          },
        ),
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
                widget.onChange(createBoxConstraints());
              });
            },
          ),
          child
        ],
      ),
    );
  }
}
