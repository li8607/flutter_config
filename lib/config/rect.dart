import 'package:flutter/material.dart';
import 'package:flutter_widget/config/width.dart';

class RectWidget extends StatefulWidget {
  final ValueChanged<Rect> onChange;
  final Rect rect;

  RectWidget({Key key, this.rect, this.onChange}) : super(key: key);

  @override
  _RectWidgetState createState() => _RectWidgetState();
}

class _RectWidgetState extends State<RectWidget> {
  double top, left, bottom, right;

  @override
  void initState() {
    Rect rect = widget.rect ?? Rect.fromLTRB(10, 10, 10, 10);
    top = rect.top;
    left = rect.left;
    bottom = rect.bottom;
    right = rect.right;
    super.initState();
  }

  Rect createRect() {
    return Rect.fromLTRB(left, top, right, bottom);
  }

  Widget _onlyChild() {
    return Container(
      child: Wrap(
        children: <Widget>[
          DoubleWidget(
            title: "top",
            hit: "请输入top值",
            value: top,
            onChange: (value) {
              top = value;
              widget.onChange(createRect());
            },
          ),
          DoubleWidget(
            title: "left",
            hit: "请输入left值",
            value: left,
            onChange: (value) {
              left = value;
              widget.onChange(createRect());
            },
          ),
          DoubleWidget(
            title: "bottom",
            hit: "请输入bottom值",
            value: bottom,
            onChange: (value) {
              bottom = value;
              widget.onChange(createRect());
            },
          ),
          DoubleWidget(
            title: "right",
            hit: "请输入right值",
            value: right,
            onChange: (value) {
              right = value;
              widget.onChange(createRect());
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _onlyChild(),
    );
  }
}
