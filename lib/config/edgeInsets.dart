import 'package:flutter/material.dart';
import 'package:flutter_widget/config/width.dart';

class EdgeInsetsWidget extends StatefulWidget {
  final ValueChanged<EdgeInsets> onChange;
  final EdgeInsets edgeInsets;
  EdgeInsetsWidget({Key key, this.edgeInsets, this.onChange}) : super(key: key);

  @override
  _EdgeInsetsWidgetState createState() => _EdgeInsetsWidgetState();
}

class _EdgeInsetsWidgetState extends State<EdgeInsetsWidget> {
  String _groupValue = "";
  double top, left, bottom, right;
  double value;
  Map<String, Object> list = {};

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
        print("$value");
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
                    onChanged: (value1) {
                      setState(() {
                        _groupValue = value1;
                        list = {"value": value ?? 0.0};
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
                        list = {
                          "top": top ?? 0.0,
                          "left": left ?? 0.0,
                          "bottom": bottom ?? 0.0,
                          "right": right ?? 0.0
                        };
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          Wrap(
            children: list.keys.map<Widget>((key) {
              return DoubleWidget(
                title: key,
                hit: "请输入key值",
                value: list[key],
                onChange: (value) {
                  list[key] = value;
                  if (_groupValue == 'all') {
                    widget.onChange(EdgeInsets.all(value));
                  } else if (_groupValue == "only") {
                    widget.onChange(EdgeInsets.only(
                        top: list["top"],
                        left: list["left"],
                        bottom: list["bottom"],
                        right: list["right"]));
                  }
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _card(Widget child, {String title}) {
    List<Widget> list = List();

    Widget widget;
    if (title != null) {
      widget = Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        alignment: Alignment.center,
        child:
            Text(title, style: TextStyle(fontSize: 16.0, color: Colors.white)),
      );
      list.add(widget);
    }

    list.add(child);
    return Card(
        color: Colors.purpleAccent,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        clipBehavior: Clip.antiAlias,
        semanticContainer: false,
        child: Column(
          children: list,
        ));
  }
}
