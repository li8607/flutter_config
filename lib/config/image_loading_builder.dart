import 'package:flutter/material.dart';

class ImageLoadingBuilderWidget extends StatefulWidget {
  final ValueChanged<ImageLoadingBuilder> onChange;
  final ImageLoadingBuilder loadingBuilder;
  ImageLoadingBuilderWidget({Key key, this.loadingBuilder, this.onChange})
      : super(key: key);

  @override
  _ImageLoadingBuilderWidgetState createState() =>
      _ImageLoadingBuilderWidgetState();
}

class _ImageLoadingBuilderWidgetState extends State<ImageLoadingBuilderWidget> {
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
            widget.onChange((BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) =>
                _child1());
          },
          child: _child1(),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: InkWell(
            onTap: () {
              widget.onChange((BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) =>
                  _child2());
            },
            child: _child2(),
          ),
        ),
        InkWell(
          onTap: () {
            widget.onChange((BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) =>
                _child3());
          },
          child: _child3(),
        ),
      ],
    );
  }
}
