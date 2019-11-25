import 'package:flutter/material.dart';

class DoubleWidget extends StatefulWidget {
  final String title;
  final String hit;
  final double value;
  final ValueChanged<double> onChange;
  DoubleWidget(
      {Key key, @required this.title, this.hit, this.value, this.onChange})
      : super(key: key);

  @override
  _DoubleWidgetState createState() => _DoubleWidgetState();
}

class _DoubleWidgetState extends State<DoubleWidget> {
  TextEditingController _controller;
  double slive;
  @override
  void initState() {
    double value = widget.value ?? 0.0;
    slive = value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.purpleAccent,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        clipBehavior: Clip.antiAlias,
        semanticContainer: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) {
                  slive = double.parse(value);
                  widget.onChange(double.parse(value));
                },
                controller: TextEditingController.fromValue(
                    TextEditingValue(text: slive.toString())),
                decoration: InputDecoration(
                    labelText: widget.title,
                    hintText: widget.hit,
                    labelStyle: TextStyle(fontSize: 14.0, color: Colors.white)),
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              child: Slider(
                value: slive,
                max: 500.0,
                min: 0.0,
                activeColor: Colors.blue,
                onChanged: (value) {
                  slive = value;
                  widget.onChange(value);
                },
              ),
            )
          ],
        ));
  }
}
