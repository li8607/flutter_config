import 'package:flutter/material.dart';

class ImageRepeatWidget extends StatefulWidget {
  final ValueChanged<ImageRepeat> onChange;
  final ImageRepeat imageRepeat;

  ImageRepeatWidget({Key key, this.imageRepeat, this.onChange})
      : super(key: key);

  @override
  _ImageRepeatWidgetState createState() => _ImageRepeatWidgetState();
}

class _ImageRepeatWidgetState extends State<ImageRepeatWidget> {
  ImageRepeat _groupValue;
  @override
  void initState() {
    _groupValue = widget.imageRepeat;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
      children: <Widget>[
        RadioListTile(
          value: ImageRepeat.noRepeat,
          title: Text("noRepeat"),
          groupValue: _groupValue,
          onChanged: (value) {
            _groupValue = value;
            widget.onChange(value);
          },
        ),
        RadioListTile(
          value: ImageRepeat.repeat,
          title: Text("repeat"),
          groupValue: _groupValue,
          onChanged: (value) {
            _groupValue = value;
            widget.onChange(value);
          },
        ),
        RadioListTile(
          value: ImageRepeat.repeatX,
          title: Text("repeatX"),
          groupValue: _groupValue,
          onChanged: (value) {
            _groupValue = value;
            widget.onChange(value);
          },
        ),
        RadioListTile(
          value: ImageRepeat.repeatY,
          title: Text("repeatY"),
          groupValue: _groupValue,
          onChanged: (value) {
            _groupValue = value;
            widget.onChange(value);
          },
        )
      ],
    ));
  }
}
