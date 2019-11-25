import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class AppbarDemo extends StatefulWidget {
  @override
  _AppbarDemoState createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "leading": null,
      "automaticallyImplyLeading": true,
      "title": null,
      "actions": null,
      "flexibleSpace": null,
      "bottom": null,
      "elevation": null,
      "shape": null,
      "backgroundColor": null,
      "brightness": null,
      "iconTheme": null,
      "actionsIconTheme": null,
      "textTheme": null,
      "primary": true,
      "centerTitle": null,
      "titleSpacing": NavigationToolbar.kMiddleSpacing,
      "toolbarOpacity": 1.0,
      "bottomOpacity": 1.0,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: AppBar(
          leading: configs["leading"],
          automaticallyImplyLeading: configs["automaticallyImplyLeading"],
          title: configs["title"],
          actions: configs["actions"],
          flexibleSpace: configs["flexibleSpace"],
          bottom: configs["bottom"],
          elevation: configs["elevation"],
          shape: configs["shape"],
          backgroundColor: configs["backgroundColor"],
          brightness: configs["brightness"],
          iconTheme: configs["iconTheme"],
          actionsIconTheme: configs["actionsIconTheme"],
          textTheme: configs["textTheme"],
          primary: configs["primary"],
          centerTitle: configs["centerTitle"],
          titleSpacing: configs["titleSpacing"],
          toolbarOpacity: configs["toolbarOpacity"],
          bottomOpacity: configs["bottomOpacity"],
        ));
  }
}
