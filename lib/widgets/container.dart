import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "width": 100.0,
      "height": 100.0,
      "child": null,
      "margin": null,
      "padding": null,
      "color": null,
      "transform": null,
      "alignment": null,
      "constraints": null,
      "decoration": null
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
      onChange: (value) {
        setState(() {
          configs = value;
        });
      },
      configs: configs,
      child: Container(
          color: configs["color"],
          width: configs["width"],
          height: configs["height"],
          child: configs["child"],
          margin: configs["margin"],
          padding: configs["padding"],
          transform: configs["transform"],
          alignment: configs["alignment"],
          constraints: configs["constraints"],
          decoration: configs["decoration"]),
    );
  }
}
