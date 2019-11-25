import 'package:flutter/material.dart';

class ChildWidget extends StatefulWidget {
  final ValueChanged<Widget> onChange;

  ChildWidget({Key key, this.onChange}) : super(key: key);

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  Widget _child(
      {double width = 20.0, double height = 20.0, Color color = Colors.black}) {
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          color: color,
          child: Text('child' * (width ~/ 10),
              style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            InkWell(
              onTap: () {
                widget.onChange(
                    _child(width: 20.0, height: 20.0, color: Colors.redAccent));
              },
              child: _child(width: 20.0, height: 20.0, color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {
                widget.onChange(_child(
                    width: 50.0, height: 50.0, color: Colors.blueAccent));
              },
              child:
                  _child(width: 50.0, height: 50.0, color: Colors.blueAccent),
            ),
            InkWell(
              onTap: () {
                widget.onChange(_child(
                    width: 100.0, height: 100.0, color: Colors.greenAccent));
              },
              child: _child(
                  width: 100.0, height: 100.0, color: Colors.greenAccent),
            )
          ],
        ));
  }
}
