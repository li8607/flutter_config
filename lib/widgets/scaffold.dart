import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/detail.dart';

class ScaffoldDemo extends StatefulWidget {
  @override
  _ScaffoldDemoState createState() => _ScaffoldDemoState();
}

class _ScaffoldDemoState extends State<ScaffoldDemo> {
  Map<String, Object> configs;

  @override
  void initState() {
    configs = {
      "appBar": null,
      "body": null,
      "floatingActionButton": null,
      "floatingActionButtonLocation": null,
      "floatingActionButtonAnimator": null,
      "persistentFooterButtons": null,
      "drawer": null,
      "endDrawer": null,
      "bottomNavigationBar": null,
      "bottomSheet": null,
      "backgroundColor": null,
      "resizeToAvoidBottomPadding": null,
      "resizeToAvoidBottomInset": null,
      "primary": true,
      "drawerDragStartBehavior": DragStartBehavior.start,
      "extendBody": false,
      "drawerScrimColor": null,
      "drawerEdgeDragWidth": null,
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailWidget(
        configs: configs,
        child: Scaffold(
          appBar: configs["appBar"],
          body: configs["body"],
          floatingActionButton: configs["floatingActionButton"],
          floatingActionButtonLocation: configs["floatingActionButtonLocation"],
          floatingActionButtonAnimator: configs["floatingActionButtonAnimator"],
          persistentFooterButtons: configs["persistentFooterButtons"],
          drawer: configs["drawer"],
          endDrawer: configs["endDrawer"],
          bottomNavigationBar: configs["bottomNavigationBar"],
          bottomSheet: configs["bottomSheet"],
          backgroundColor: configs["backgroundColor"],
          resizeToAvoidBottomPadding: configs["resizeToAvoidBottomPadding"],
          resizeToAvoidBottomInset: configs["resizeToAvoidBottomInset"],
          primary: configs["primary"],
          drawerDragStartBehavior: configs["drawerDragStartBehavior"],
          extendBody: configs["extendBody"],
          drawerScrimColor: configs["drawerScrimColor"],
          drawerEdgeDragWidth: configs["drawerEdgeDragWidth"],
        ));
  }
}
