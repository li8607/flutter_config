import 'package:flutter/material.dart';

class FilterQualityWidget extends StatefulWidget {
  final ValueChanged<FilterQuality> onChange;
  final FilterQuality filterQuality;

  FilterQualityWidget({Key key, this.filterQuality, this.onChange})
      : super(key: key);

  @override
  _FilterQualityWidgetState createState() => _FilterQualityWidgetState();
}

class _FilterQualityWidgetState extends State<FilterQualityWidget> {
  FilterQuality _groupValue;
  @override
  void initState() {
    _groupValue = widget.filterQuality;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: FilterQuality.high,
            title: Text('high'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(value);
            },
          ),
          RadioListTile(
            value: FilterQuality.low,
            title: Text('low'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(value);
            },
          ),
          RadioListTile(
            value: FilterQuality.medium,
            title: Text('medium'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(value);
            },
          ),
          RadioListTile(
            value: FilterQuality.none,
            title: Text('none'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(value);
            },
          ),
        ],
      ),
    );
  }
}
