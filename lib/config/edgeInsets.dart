import 'package:flutter/material.dart';

class EdgeInsetsWidget extends StatefulWidget {
  ValueChanged<EdgeInsets> onChange;

  EdgeInsetsWidget({Key key, this.onChange}) : super(key: key);

  @override
  _EdgeInsetsWidgetState createState() => _EdgeInsetsWidgetState();
}

class _EdgeInsetsWidgetState extends State<EdgeInsetsWidget> {
  String _groupValue = "all";
  double top, left, bottom, right;

  Widget _allChild() {
    return Container(
        child: TextField(
      onChanged: (value) {
        widget.onChange(EdgeInsets.all(double.parse(value)));
      },
      decoration: InputDecoration(labelText: 'value'),
      keyboardType: TextInputType.number,
    ));
  }

  EdgeInsets only() {
    return EdgeInsets.only(
        top: top ?? 0, left: left ?? 0, bottom: bottom ?? 0, right: right ?? 0);
  }

  Widget _onlyChild() {
    return Container(
      child: Wrap(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              top = double.parse(value);
              widget.onChange(only());
            },
            decoration: InputDecoration(labelText: 'top'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            onChanged: (value) {
              left = double.parse(value);
              widget.onChange(only());
            },
            decoration: InputDecoration(labelText: 'left'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            onChanged: (value) {
              bottom = double.parse(value);
              widget.onChange(only());
            },
            decoration: InputDecoration(labelText: 'bottom'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            onChanged: (value) {
              right = double.parse(value);
              widget.onChange(only());
            },
            decoration: InputDecoration(labelText: 'right'),
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (_groupValue == "all") {
      child = _allChild();
    } else if (_groupValue == 'only') {
      child = _onlyChild();
    }

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: RadioListTile(
                    value: 'all',
                    title: Text('all'),
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: RadioListTile(
                    value: 'only',
                    title: Text('only'),
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          child
        ],
      ),
    );
  }
}
