import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class ImageDemo extends StatefulWidget {
  @override
  _ImageDemoState createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "image": null,
      "frameBuilder": null,
      "loadingBuilder": null,
      "semanticLabel": null,
      "excludeFromSemantics": false,
      "width": null,
      "height": null,
      "color": null,
      "colorBlendMode": null,
      "fit": null,
      "alignment": Alignment.center,
      "repeat": ImageRepeat.noRepeat,
      "centerSlice": null,
      "matchTextDirection": false,
      "gaplessPlayback": false,
      "filterQuality": FilterQuality.low,
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
        child: Image(
          image: configs["image"] ?? AssetImage('images/lake.jpg'),
          frameBuilder: configs["frameBuilder"],
          loadingBuilder: configs["loadingBuilder"],
          semanticLabel: configs["semanticLabel"],
          excludeFromSemantics: configs["excludeFromSemantics"] ?? false,
          width: configs["width"],
          height: configs["height"],
          color: configs["color"],
          colorBlendMode: configs["colorBlendMode"],
          fit: configs["fit"],
          alignment: configs["alignment"] ?? Alignment.center,
          repeat: configs["repeat"] ?? ImageRepeat.noRepeat,
          centerSlice: configs["centerSlice"],
          matchTextDirection: configs["matchTextDirection"] ?? false,
          gaplessPlayback: configs["gaplessPlayback"] ?? false,
          filterQuality: configs["filterQuality"] ?? FilterQuality.low,
        ));
  }
}
