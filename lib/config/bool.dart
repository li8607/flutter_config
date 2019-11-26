import 'package:flutter/material.dart';

class BoolWidget extends StatefulWidget {
  final ValueChanged<bool> onChange;
  final bool value;

  BoolWidget({Key key, this.value, this.onChange}) : super(key: key);

  @override
  _BoolWidgetState createState() => _BoolWidgetState();
}

class _BoolWidgetState extends State<BoolWidget> {
  bool _groupValue;

  @override
  void initState() {
    _groupValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: RadioListTile(
              value: true,
              title: Text("true"),
              groupValue: _groupValue,
              onChanged: (value) {
                _groupValue = value;
                widget.onChange(value);
              },
            ),
          ),
          Expanded(
            child: RadioListTile(
              value: false,
              title: Text("false"),
              groupValue: _groupValue,
              onChanged: (value) {
                _groupValue = value;
                widget.onChange(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
