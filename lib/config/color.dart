import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  final ValueChanged<Color> onChange;
  ColorWidget({Key key, this.onChange}) : super(key: key);

  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  String _groupValue = "red";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: 'red',
            title: Text('red'),
            groupValue: _groupValue,
            onChanged: (value) {
              this._groupValue = value;
              widget.onChange(Colors.red);
            },
          ),
          RadioListTile(
            value: 'blue',
            title: Text('blue'),
            groupValue: _groupValue,
            onChanged: (value) {
              this._groupValue = value;
              widget.onChange(Colors.blue);
            },
          ),
          RadioListTile(
            value: 'yellow',
            title: Text('yellow'),
            groupValue: _groupValue,
            onChanged: (value) {
              this._groupValue = value;
              widget.onChange(Colors.yellow);
            },
          )
        ],
      ),
    );
  }
}
