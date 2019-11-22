import 'package:flutter/material.dart';

class Matrix4Widget extends StatefulWidget {
  ValueChanged<Matrix4> onChange;
  Matrix4Widget({Key key, this.onChange}) : super(key: key);

  @override
  _Matrix4WidgetState createState() => _Matrix4WidgetState();
}

class _Matrix4WidgetState extends State<Matrix4Widget> {
  Widget _rotaionXYZ() {
    return Container(
        child: TextField(
      onChanged: (value) {
        if (_groupValue == 'rotationX') {
          widget.onChange(Matrix4.rotationX(double.parse(value)));
        } else if (_groupValue == 'rotation') {
          widget.onChange(Matrix4.rotationY(double.parse(value)));
        } else {
          widget.onChange(Matrix4.rotationZ(double.parse(value)));
        }
      },
      decoration: InputDecoration(labelText: _groupValue),
      keyboardType: TextInputType.number,
    ));
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
