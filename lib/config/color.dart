import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  final ValueChanged<Color> onChange;
  final Color value;
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple
  ];
  ColorWidget({Key key, this.value, this.onChange}) : super(key: key);

  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  Color _groupValue;

  @override
  void initState() {
    _groupValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      clipBehavior: Clip.antiAlias,
      semanticContainer: false,
      child: Container(
        child: Wrap(
          children: widget.colors.map<Widget>((Color color) {
            return RadioListTile(
              value: color,
              title: Container(
                color: color,
                width: 20.0,
                height: 20.0,
              ),
              groupValue: _groupValue,
              onChanged: (value) {
                this._groupValue = value;
                widget.onChange(color);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
