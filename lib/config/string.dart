import 'package:flutter/material.dart';

class StringWidget extends StatefulWidget {
  final ValueChanged<String> onChange;
  final String semanticLabel;

  StringWidget({Key key, this.semanticLabel, this.onChange}) : super(key: key);

  @override
  _StringWidgetState createState() => _StringWidgetState();
}

class _StringWidgetState extends State<StringWidget> {
  String text;

  @override
  void initState() {
    text = widget.semanticLabel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(33, 33, 33, 33),
      padding: EdgeInsets.all(10.0),
      child: TextField(
        onChanged: (value) {
          text = value;
          widget.onChange(value);
        },
        controller:
            TextEditingController.fromValue(TextEditingValue(text: text ?? "")),
        decoration: InputDecoration(
            labelText: "semanticLabel",
            hintText: "semanticLabel",
            labelStyle: TextStyle(fontSize: 14.0, color: Colors.white)),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
