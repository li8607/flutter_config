import 'package:flutter/material.dart';
import 'package:flutter_widget/config/width.dart';

class Matrix4Widget extends StatefulWidget {
  final ValueChanged<Matrix4> onChange;
  final Matrix4 matrix4;
  Matrix4Widget({Key key, this.matrix4, this.onChange}) : super(key: key);

  @override
  _Matrix4WidgetState createState() => _Matrix4WidgetState();
}

class _Matrix4WidgetState extends State<Matrix4Widget> {
  Widget _rotaionXYZ() {
    return DoubleWidget(
      title: "_groupValue",
      hit: "请输入值",
      onChange: (value) {
        if (_groupValue == 'rotationX') {
          widget.onChange(Matrix4.rotationX(value));
        } else if (_groupValue == 'rotation') {
          widget.onChange(Matrix4.rotationY(value));
        } else {
          widget.onChange(Matrix4.rotationZ(value));
        }
      },
    );
  }

  String _groupValue = '';

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (_groupValue == 'rotationX' ||
        _groupValue == 'rotationY' ||
        _groupValue == 'rotationZ') {
      child = _rotaionXYZ();
    } else {
      child = Container();
    }

    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
            value: 'rotationX',
            title: Text('rotationX'),
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          RadioListTile(
            value: 'rotationY',
            title: Text('rotationY'),
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          RadioListTile(
            value: 'rotationZ',
            title: Text('rotationZ'),
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
