import 'package:flutter/material.dart';
import 'package:flutter_widget/config/alignment.dart';
import 'package:flutter_widget/config/border.dart';
import 'package:flutter_widget/config/child.dart';
import 'package:flutter_widget/config/children.dart';
import 'package:flutter_widget/config/color.dart';
import 'package:flutter_widget/config/constraints.dart';
import 'package:flutter_widget/config/cross_axis_alignment.dart';
import 'package:flutter_widget/config/decoration.dart';
import 'package:flutter_widget/config/text_baseline.dart';
import 'package:flutter_widget/config/width.dart';

import 'edgeInsets.dart';
import 'matrix4.dart';

class ConfigGroupWidget extends StatefulWidget {
  final ValueChanged<Map<String, Object>> onChange;
  final Map<String, Object> configs;

  ConfigGroupWidget({Key key, this.configs, this.onChange}) : super(key: key);

  @override
  _ConfigGroupWidgetState createState() => _ConfigGroupWidgetState();
}

class _ConfigGroupWidgetState extends State<ConfigGroupWidget>
    with SingleTickerProviderStateMixin {
  Map<String, Object> config;
  TabController _tabController;

  @override
  void initState() {
    config = widget.configs;
    _tabController = TabController(length: config.keys.length, vsync: this);
    super.initState();
  }

  Widget createWidget(String key, Object value) {
    Widget child;
    if (key == 'width' || key == 'height') {
      child = _createDoubleWidget(key, value);
    } else if (key == 'child') {
      child = _createChildWidget(key);
    } else if (key == 'margin' || key == 'padding') {
      child = _createEdgeInsetsWidget(key, value);
    } else if (key == 'color') {
      child = _createColorWidget(key, value);
    } else if (key == 'transform') {
      child = _createMatrix4Widget(key, value);
    } else if (key == 'alignment') {
      child = _createAlignmentWidget(key, value);
    } else if (key == 'constraints') {
      child = _createConstraints(key, value);
    } else if (key == 'decoration') {
      child = _createDecoration(key, value);
    } else if (key == 'border') {
      child = _createBoxBorder(key, value);
    } else if (key == 'children') {
      child = _createChildren(key, value);
    } else if (key == 'textBaseline') {
      child = _createTextBaseline(key, value);
    } else if (key == 'crossAxisAlignment') {
      child = _createcrossAxisAlignment(key, value);
    } else {
      child = Container();
    }
    return child;
  }

  Widget _createcrossAxisAlignment(key, value) {
    return CrossAxisAlignmentWidget(
      crossAxisAlignment: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createTextBaseline(key, value) {
    return TextBaselineWidget(
      textBaseline: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createChildren(String key, List<Widget> value) {
    return ChildrenWidget(
      children: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createBoxBorder(key, value) {
    return BoxBorderWidget(
      border: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createDecoration(String key, BoxDecoration value) {
    return DecorationWidget(
      decoration: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createConstraints(String key, BoxConstraints value) {
    return ConstraintsWidget(
      constraints: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createAlignmentWidget(String key, Alignment value) {
    return AlignmentWidget(
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createMatrix4Widget(String key, Matrix4 value) {
    return Matrix4Widget(
        matrix4: value,
        onChange: (value) {
          config[key] = value;
          widget.onChange(config);
        });
  }

  Widget _createColorWidget(String key, Color value) {
    return ColorWidget(
      value: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createEdgeInsetsWidget(String key, EdgeInsets value) {
    return EdgeInsetsWidget(
      edgeInsets: value,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createChildWidget(String key) {
    return ChildWidget(
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  Widget _createDoubleWidget(String key, double width) {
    return DoubleWidget(
      title: key,
      hit: "请输入$key值",
      value: width,
      onChange: (value) {
        config[key] = value;
        widget.onChange(config);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(
              //生成Tab菜单
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.blue,
              isScrollable: true,
              controller: _tabController,
              tabs: config.keys.map((e) => Tab(text: e)).toList()),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: config.keys.map<Widget>((key) {
                return Container(
                  child: createWidget(key, config[key]),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
