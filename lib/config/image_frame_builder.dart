import 'package:flutter/material.dart';

class ImageFrameBuilderWidget extends StatefulWidget {
  final ValueChanged<ImageFrameBuilder> onChange;
  final ImageFrameBuilder imageFrameBuilder;
  ImageFrameBuilderWidget({Key key, this.imageFrameBuilder, this.onChange})
      : super(key: key);

  _ImageFrameBuilderWidgetState createState() =>
      _ImageFrameBuilderWidgetState();
}

class _ImageFrameBuilderWidgetState extends State<ImageFrameBuilderWidget> {
  Widget _child1() {
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.red,
    );
  }

  Widget _child2() {
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.blue,
    );
  }

  Widget _child3() {
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {
            widget.onChange((BuildContext context, Widget child, int frame,
                    bool wasSynchronouslyLoaded) =>
                _child1());
          },
          child: _child1(),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: InkWell(
            onTap: () {
              widget.onChange((BuildContext context, Widget child, int frame,
                      bool wasSynchronouslyLoaded) =>
                  _child2());
            },
            child: _child2(),
          ),
        ),
        InkWell(
          onTap: () {
            widget.onChange((BuildContext context, Widget child, int frame,
                    bool wasSynchronouslyLoaded) =>
                _child3());
          },
          child: _child3(),
        ),
      ],
    );
  }
}
