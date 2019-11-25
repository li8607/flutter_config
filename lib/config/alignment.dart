import 'package:flutter/material.dart';

class AlignmentWidget extends StatefulWidget {
  final ValueChanged<Alignment> onChange;
  final Alignment alignment;
  AlignmentWidget({Key key, this.alignment, this.onChange}) : super(key: key);

  @override
  _AlignmentWidgetState createState() => _AlignmentWidgetState();
}

class _AlignmentWidgetState extends State<AlignmentWidget> {
  Alignment _groupValue;

  @override
  void initState() {
    _groupValue = widget.alignment;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: Alignment.bottomCenter,
            title: Text('bottomCenter'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.bottomCenter);
            },
          ),
          RadioListTile(
            value: Alignment.bottomLeft,
            title: Text('bottomLeft'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.bottomLeft);
            },
          ),
          RadioListTile(
            value: Alignment.bottomRight,
            title: Text('bottomRight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.bottomRight);
            },
          ),
          RadioListTile(
            value: Alignment.topCenter,
            title: Text('topCenter'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.topCenter);
            },
          ),
          RadioListTile(
            value: Alignment.topRight,
            title: Text('topRight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.topRight);
            },
          ),
          RadioListTile(
            value: Alignment.topLeft,
            title: Text('topLeft'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.topLeft);
            },
          ),
          RadioListTile(
            value: Alignment.center,
            title: Text('center'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.center);
            },
          ),
          RadioListTile(
            value: Alignment.centerRight,
            title: Text('centerRight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.centerRight);
            },
          ),
          RadioListTile(
            value: Alignment.centerLeft,
            title: Text('centerLeft'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.centerLeft);
            },
          )
        ],
      ),
    );
  }
}
