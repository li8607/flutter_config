import 'package:flutter/material.dart';

class ChildrenWidget extends StatefulWidget {
  final ValueChanged<List<Widget>> onChange;
  final List<Widget> children;
  ChildrenWidget({Key key, this.children, this.onChange}) : super(key: key);

  @override
  _ChildrenWidgetState createState() => _ChildrenWidgetState();
}

class _ChildrenWidgetState extends State<ChildrenWidget> {
  Widget _child(
      {double width = 20.0, double height = 20.0, Color color = Colors.black}) {
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          color: color,
          child: Text('child', style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }

  List<Widget> children;
  @override
  void initState() {
    children = widget.children ?? <Widget>[];
    super.initState();
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
                children.add(
                    _child(width: 20.0, height: 20.0, color: Colors.redAccent));
                widget.onChange(children);
              },
              child: _child(width: 20.0, height: 20.0, color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {
                children.add(_child(
                    width: 50.0, height: 50.0, color: Colors.blueAccent));
                widget.onChange(children);
              },
              child:
                  _child(width: 50.0, height: 50.0, color: Colors.blueAccent),
            ),
            InkWell(
              onTap: () {
                children.add(_child(
                    width: 100.0, height: 100.0, color: Colors.greenAccent));
                widget.onChange(children);
              },
              child: _child(
                  width: 100.0, height: 100.0, color: Colors.greenAccent),
            )
          ],
        ));
  }
}
