import 'dart:async';

import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  final ValueChanged<String> onChanged;

  Number({Key key, this.onChanged}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  ///数字
  int num = 0;
  Timer timer;

  ///按钮
  Widget btn() {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: new BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0x33333333)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              child: Text(
                '$num',
                style: TextStyle(color: Color(0xff333333), fontSize: 20),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              new GestureDetector(
                child: Container(
                  width: 50,
                  height: 30,
                  child: Icon(Icons.remove),
                ),
                //不写的话点击起来不流畅
                onTap: () {
                  setState(() {
                    if (num <= 0) {
                      return;
                    }
                    num--;
                    widget.onChanged(num.toString());
                  });
                },
                onTapDown: (e) {
                  if (timer != null) {
                    timer.cancel();
                  }
                  if (num <= 0) {
                    return;
                  }
                  // 这里面的触发时间可以自己定义
                  timer = new Timer.periodic(Duration(milliseconds: 100), (e) {
                    setState(() {
                      if (num <= 0) {
                        return;
                      }
                      num--;
                      widget.onChanged(num.toString());
                    });
                  });
                },
                onTapUp: (e) {
                  if (timer != null) {
                    timer.cancel();
                  }
                },
                // 这里防止长按没有抬起手指，而move到了别处，会继续 --
                onTapCancel: () {
                  if (timer != null) {
                    timer.cancel();
                  }
                },
              ),
              new GestureDetector(
                child: Container(
                  width: 50,
                  height: 30,
                  child: Icon(Icons.add),
                ),
                onTap: () {
                  setState(() {
                    if (num >= 999999999) {
                      return;
                    }
                    num++;
                    widget.onChanged(num.toString());
                  });
                },
                onTapDown: (e) {
                  if (timer != null) {
                    timer.cancel();
                  }
                  if (num >= 999999999) {
                    return;
                  }
                  timer = new Timer.periodic(Duration(milliseconds: 100), (e) {
                    setState(() {
                      if (num >= 999999999) {
                        return;
                      }
                      num++;
                      widget.onChanged(num.toString());
                    });
                  });
                },
                onTapUp: (e) {
                  if (timer != null) {
                    timer.cancel();
                  }
                },
                onTapCancel: () {
                  if (timer != null) {
                    timer.cancel();
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return btn();
  }
}
