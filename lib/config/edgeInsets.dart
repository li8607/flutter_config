import 'package:flutter/material.dart';
import 'package:flutter_widget/config/width.dart';

class EdgeInsetsWidget extends StatefulWidget {
  ValueChanged<EdgeInsets> onChange;
  EdgeInsets edgeInsets;
  EdgeInsetsWidget({Key key, this.edgeInsets, this.onChange}) : super(key: key);

  @override
  _EdgeInsetsWidgetState createState() => _EdgeInsetsWidgetState();
}

class _EdgeInsetsWidgetState extends State<EdgeInsetsWidget> {
  String _groupValue = "all";
  double top, left, bottom, right;
  double value;

  @override
  void initState() {
    if (widget.edgeInsets != null) {
      top = widget.edgeInsets.top;
      left = widget.edgeInsets.left;
      bottom = widget.edgeInsets.bottom;
      right = widget.edgeInsets.right;
      if (top == left && top == bottom && top == right) {
        value = top;
      }
    }
    super.initState();
  }

  Widget _allChild() {
    return DoubleWidget(
      title: "value",
      hit: "请输入值",
      value: value,
      onChange: (value) {
        widget.onChange(EdgeInsets.all(value));
      },
    );
  }

  EdgeInsets only() {
    return EdgeInsets.only(
        top: top ?? 0, left: left ?? 0, bottom: bottom ?? 0, right: right ?? 0);
  }

  Widget _onlyChild() {
    return Container(
      child: Wrap(
        children: <Widget>[
          DoubleWidget(
            title: "top",
            hit: "请输入top值",
            value: value,
            onChange: (value) {
              top = value;
              widget.onChange(only());
            },
          ),
          DoubleWidget(
            title: "left",
            hit: "请输入left值",
            value: value,
            onChange: (value) {
              left = value;
              widget.onChange(only());
            },
          ),
          DoubleWidget(
            title: "bottom",
            hit: "请输入bottom值",
            value: value,
            onChange: (value) {
              bottom = value;
              widget.onChange(only());
            },
          ),
          DoubleWidget(
            title: "right",
            hit: "请输入right值",
            value: value,
            onChange: (value) {
              right = value;
              widget.onChange(only());
            },
          ),
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
