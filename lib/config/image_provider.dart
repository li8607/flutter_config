import 'package:flutter/material.dart';

class ImageProviderWidget extends StatefulWidget {
  final ValueChanged<ImageProvider> onChange;
  final ImageProvider imageProvider;
  ImageProviderWidget({Key key, this.imageProvider, this.onChange})
      : super(key: key);

  _ImageProviderWidgetState createState() => _ImageProviderWidgetState();
}

class _ImageProviderWidgetState extends State<ImageProviderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () {
              widget.onChange(AssetImage('images/pic1.jpeg'));
            },
            child: Image.asset(
              'images/pic1.jpeg',
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: InkWell(
              onTap: () {
                widget.onChange(AssetImage('images/pic2.jpg'));
              },
              child: Image.asset(
                'images/pic2.jpg',
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              widget.onChange(AssetImage('images/pic3.jpg'));
            },
            child: Image.asset(
              'images/pic3.jpg',
            ),
          ),
        )
      ],
    );
  }
}
