import 'package:flutter/material.dart';

class DecorationWidget extends StatefulWidget {
  final ValueChanged<BoxDecoration> onChange;

  DecorationWidget({Key key, this.onChange}) : super(key: key);

  @override
  _DecorationWidgetState createState() => _DecorationWidgetState();
}

class _DecorationWidgetState extends State<DecorationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
