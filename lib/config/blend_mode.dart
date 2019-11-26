import 'package:flutter/material.dart';

class BlendModeWidget extends StatefulWidget {
  final ValueChanged<BlendMode> onChange;
  final BlendMode blendMode;
  BlendModeWidget({Key key, this.blendMode, this.onChange}) : super(key: key);

  @override
  _BlendModeWidgetState createState() => _BlendModeWidgetState();
}

class _BlendModeWidgetState extends State<BlendModeWidget> {
  BlendMode _groupValue;

  @override
  void initState() {
    _groupValue = widget.blendMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          RadioListTile(
            value: BlendMode.clear,
            title: Text('clear'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.clear);
            },
          ),
          RadioListTile(
            value: BlendMode.color,
            title: Text('color'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.color);
            },
          ),
          RadioListTile(
            value: BlendMode.colorBurn,
            title: Text('colorBurn'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.colorBurn);
            },
          ),
          RadioListTile(
            value: BlendMode.colorDodge,
            title: Text('colorDodge'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.colorDodge);
            },
          ),
          RadioListTile(
            value: BlendMode.darken,
            title: Text('darken'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.darken);
            },
          ),
          RadioListTile(
            value: BlendMode.difference,
            title: Text('difference'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.difference);
            },
          ),
          RadioListTile(
            value: BlendMode.dst,
            title: Text('dst'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.dst);
            },
          ),
          RadioListTile(
            value: BlendMode.dstATop,
            title: Text('dstATop'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.dstATop);
            },
          ),
          RadioListTile(
            value: BlendMode.dstIn,
            title: Text('dstIn'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.dstIn);
            },
          ),
          RadioListTile(
            value: BlendMode.dstOut,
            title: Text('dstOut'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.dstOut);
            },
          ),
          RadioListTile(
            value: BlendMode.dstOver,
            title: Text('dstOver'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.dstOver);
            },
          ),
          RadioListTile(
            value: BlendMode.exclusion,
            title: Text('exclusion'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.exclusion);
            },
          ),
          RadioListTile(
            value: BlendMode.hardLight,
            title: Text('hardLight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.hardLight);
            },
          ),
          RadioListTile(
            value: BlendMode.hue,
            title: Text('hue'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.hue);
            },
          ),
          RadioListTile(
            value: BlendMode.lighten,
            title: Text('lighten'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.lighten);
            },
          ),
          RadioListTile(
            value: BlendMode.luminosity,
            title: Text('luminosity'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.luminosity);
            },
          ),
          RadioListTile(
            value: BlendMode.modulate,
            title: Text('modulate'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.modulate);
            },
          ),
          RadioListTile(
            value: BlendMode.multiply,
            title: Text('multiply'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.multiply);
            },
          ),
          RadioListTile(
            value: BlendMode.overlay,
            title: Text('overlay'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.overlay);
            },
          ),
          RadioListTile(
            value: BlendMode.plus,
            title: Text('plus'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.plus);
            },
          ),
          RadioListTile(
            value: BlendMode.saturation,
            title: Text('saturation'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.saturation);
            },
          ),
          RadioListTile(
            value: BlendMode.screen,
            title: Text('screen'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.screen);
            },
          ),
          RadioListTile(
            value: BlendMode.softLight,
            title: Text('softLight'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.softLight);
            },
          ),
          RadioListTile(
            value: BlendMode.src,
            title: Text('src'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.src);
            },
          ),
          RadioListTile(
            value: BlendMode.srcATop,
            title: Text('srcATop'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.srcATop);
            },
          ),
          RadioListTile(
            value: BlendMode.srcIn,
            title: Text('srcIn'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.srcIn);
            },
          ),
          RadioListTile(
            value: BlendMode.srcOut,
            title: Text('srcOut'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.srcOut);
            },
          ),
          RadioListTile(
            value: BlendMode.srcOver,
            title: Text('srcOver'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.srcOver);
            },
          ),
          RadioListTile(
            value: BlendMode.xor,
            title: Text('xor'),
            groupValue: _groupValue,
            onChanged: (value) {
              _groupValue = value;
              widget.onChange(BlendMode.xor);
            },
          )
        ],
      ),
    );
  }
}
