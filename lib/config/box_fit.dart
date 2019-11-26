import 'package:flutter/material.dart';

class BoxFitWidget extends StatefulWidget {
  final ValueChanged<BoxFit> onChange;
  final BoxFit boxFit;

  BoxFitWidget({Key key, this.boxFit, this.onChange}) : super(key: key);

  @override
  _BoxFitWidgetState createState() => _BoxFitWidgetState();
}

class _BoxFitWidgetState extends State<BoxFitWidget> {
  BoxFit _groupValue;

  @override
  void initState() {
    _groupValue = widget.boxFit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: BoxFit.contain,
            title: Text('contain'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.contain);
            },
          ),
          RadioListTile(
            value: BoxFit.cover,
            title: Text('cover'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.cover);
            },
          ),
          RadioListTile(
            value: BoxFit.fill,
            title: Text('fill'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.fill);
            },
          ),
          RadioListTile(
            value: BoxFit.fitHeight,
            title: Text('fitHeight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.fitHeight);
            },
          ),
          RadioListTile(
            value: BoxFit.fitWidth,
            title: Text('fitWidth'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.fitWidth);
            },
          ),
          RadioListTile(
            value: BoxFit.none,
            title: Text('none'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.none);
            },
          ),
          RadioListTile(
            value: BoxFit.scaleDown,
            title: Text('scaleDown'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BoxFit.scaleDown);
            },
          ),
        ],
      ),
    );
  }
}
