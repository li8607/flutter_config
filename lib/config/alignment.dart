import 'package:flutter/material.dart';

class AlignmentWidget extends StatefulWidget {
  final ValueChanged<Alignment> onChange;
  AlignmentWidget({Key key, this.onChange}) : super(key: key);

  @override
  _AlignmentWidgetState createState() => _AlignmentWidgetState();
}

class _AlignmentWidgetState extends State<AlignmentWidget> {
  String _groupValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: 'bottomCenter',
            title: Text('bottomCenter'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.bottomCenter);
            },
          ),
          RadioListTile(
            value: 'bottomLeft',
            title: Text('bottomLeft'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.bottomLeft);
            },
          ),
          RadioListTile(
            value: 'bottomRight',
            title: Text('bottomRight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.bottomRight);
            },
          ),
          RadioListTile(
            value: 'topCenter',
            title: Text('topCenter'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.topCenter);
            },
          ),
          RadioListTile(
            value: 'topRight',
            title: Text('topRight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.topRight);
            },
          ),
          RadioListTile(
            value: 'topLeft',
            title: Text('topLeft'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.topLeft);
            },
          ),
          RadioListTile(
            value: 'center',
            title: Text('center'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.center);
            },
          ),
          RadioListTile(
            value: 'centerRight',
            title: Text('centerRight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(Alignment.centerRight);
            },
          ),
          RadioListTile(
            value: 'centerLeft',
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
