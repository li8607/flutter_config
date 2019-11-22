import 'package:flutter/material.dart';
import 'package:flutter_widget/config/alignment.dart';
import 'package:flutter_widget/config/color.dart';
import 'package:flutter_widget/config/constraints.dart';
import 'package:flutter_widget/config/edgeInsets.dart';
import 'package:flutter_widget/config/matrix4.dart';
import 'package:flutter_widget/config/width.dart';
import 'package:flutter_widget/model/column_info.dart';
import 'package:flutter_widget/widgets/number.dart';

class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  Config config;
  DecorationConfig decorationConfig = new DecorationConfig();

  @override
  void initState() {
    config = Config();
    config.margin = const EdgeInsets.all(10.0);
    // config.color = Colors.amber[600];
    config.width = 48.0;
    config.height = 48.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ColumnInfo info = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(info.title),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              width: double.maxFinite,
              height: 200.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: config.width,
                    height: config.height,
                    constraints: config.constraints,
                    color: config.color,
                    decoration: config.decoration,
                    alignment: config.alignment,
                    padding: config.padding,
                    foregroundDecoration: config.foregroundDecoration,
                    margin: config.margin,
                    transform: config.transform,
                    child: config.child,
                  )
                ],
              ),
            ),
            Container(
              height: 100.0,
              color: Colors.black38,
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                child: Text(config.toString()),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _card(DoubleWidget(
                    title: "width",
                    onChange: (value) {
                      setState(() {
                        config.width = double.parse(value);
                      });
                    },
                  )),
                  _card(DoubleWidget(
                    title: "height",
                    onChange: (value) {
                      setState(() {
                        config.height = double.parse(value);
                      });
                    },
                  )),
                  _card(EdgeInsetsWidget(
                    onChange: (value) {
                      setState(() {
                        config.margin = value;
                      });
                    },
                  )),
                  _card(EdgeInsetsWidget(
                    onChange: (value) {
                      setState(() {
                        config.padding = value;
                      });
                    },
                  )),
                  _card(ColorWidget(
                    onChange: (value) {
                      setState(() {
                        config.color = value;
                      });
                    },
                  )),
                  _card(Matrix4Widget(
                    onChange: (value) {
                      setState(() {
                        config.transform = value;
                      });
                    },
                  )),
                  _card(AlignmentWidget(
                    onChange: (value) {
                      setState(() {
                        config.alignment = value;
                      });
                    },
                  )),
                  _card(ConstraintsWidget(
                    onChange: (value) {
                      setState(() {
                        config.constraints = value;
                      });
                    },
                  )),
                  _constraints(),
                  _decoration()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _card(Widget child) {
    return Card(
        color: Colors.deepPurpleAccent,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        clipBehavior: Clip.antiAlias,
        semanticContainer: false,
        child: child);
  }

  Widget _width() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('width:'),
          Expanded(
            child: Number(
              onChanged: (value) {
                setState(() {
                  config.width = double.parse(value);
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _height() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('height:'),
          Expanded(
            child: Number(
              onChanged: (value) {
                setState(() {
                  config.height = double.parse(value);
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _margin() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('margin:'),
          Expanded(
            child: Number(
              onChanged: (value) {
                setState(() {
                  config.margin = EdgeInsets.all(double.parse(value));
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _padding() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('padding:'),
          Expanded(
            child: Number(
              onChanged: (value) {
                setState(() {
                  config.padding = EdgeInsets.all(double.parse(value));
                });
              },
            ),
          )
        ],
      ),
    );
  }

  String _newValue = '';

  Widget _constraints() {
    // config.constraints = BoxConstraints.tightForFinite()
    return Container(
      child: Row(
        children: <Widget>[
          Text('constraints:'),
          Expanded(
            child: Column(
              children: <Widget>[
                RadioListTile<String>(
                  value: 'expand',
                  title: Text('expand'),
                  groupValue: _newValue,
                  onChanged: (value) {
                    setState(() {
                      _newValue = value;
                      config.constraints =
                          BoxConstraints.expand(width: 100.0, height: 100.0);
                    });
                  },
                ),
                RadioListTile<String>(
                  value: 'lerp',
                  title: Text('lerp'),
                  groupValue: _newValue,
                  onChanged: (value) {
                    setState(() {
                      _newValue = value;
                      // config.constraints = BoxConstraints.lerp(a, b, t)
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _newColorValue = "color";

  Widget _color() {
    // config.constraints = BoxConstraints.tightForFinite()
    return Container(
      child: Row(
        children: <Widget>[
          Text('color:'),
          Expanded(
            child: RadioListTile<String>(
              value: 'red',
              title: Text('red'),
              groupValue: _newColorValue,
              onChanged: (value) {
                setState(() {
                  _newColorValue = value;
                  config.color = Colors.red;
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              value: 'blue',
              title: Text('blue'),
              groupValue: _newColorValue,
              onChanged: (value) {
                setState(() {
                  _newColorValue = value;
                  config.color = Colors.blue;
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              value: 'yellow',
              title: Text('yellow'),
              groupValue: _newColorValue,
              onChanged: (value) {
                setState(() {
                  _newColorValue = value;
                  config.color = Colors.yellow;
                });
              },
            ),
          )
        ],
      ),
    );
  }

  String _newTransformValue = "234";

  Widget _transform() {
    // config.constraints = BoxConstraints.tightForFinite()
    return Container(
      child: Row(
        children: <Widget>[
          Text('transform:'),
          Expanded(
            child: RadioListTile<String>(
              value: 'x',
              title: Text('x'),
              groupValue: _newTransformValue,
              onChanged: (value) {
                setState(() {
                  _newTransformValue = value;
                  config.transform = Matrix4.rotationX(0.5);
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              value: 'y',
              title: Text('y'),
              groupValue: _newTransformValue,
              onChanged: (value) {
                setState(() {
                  _newTransformValue = value;
                  config.transform = Matrix4.rotationY(0.1);
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              value: 'z',
              title: Text('z'),
              groupValue: _newTransformValue,
              onChanged: (value) {
                setState(() {
                  _newTransformValue = value;
                  config.transform = Matrix4.rotationZ(0.1);
                });
              },
            ),
          )
        ],
      ),
    );
  }

  String __newAlignmentValue = "sss";

  Widget _alignment() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('alignment:'),
          Expanded(
            child: RadioListTile<String>(
              value: 'left',
              title: Text('left'),
              groupValue: __newAlignmentValue,
              onChanged: (value) {
                setState(() {
                  __newAlignmentValue = value;
                  config.alignment = Alignment.centerLeft;
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              value: 'right',
              title: Text('right'),
              groupValue: __newAlignmentValue,
              onChanged: (value) {
                setState(() {
                  __newAlignmentValue = value;
                  config.alignment = Alignment.centerRight;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  String _decorationColorValue = "red";

  Widget _decoration() {
    return _card(Container(
        color: Colors.deepPurpleAccent,
        alignment: Alignment.topLeft,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                'decoration: ' + config.decoration.toString(),
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('color:'),
                  Expanded(
                    child: RadioListTile<String>(
                      value: 'red',
                      title: Text('red'),
                      groupValue: _decorationColorValue,
                      onChanged: (value) {
                        setState(() {
                          _decorationColorValue = value;
                          decorationConfig.color = Colors.red;
                          config.decoration = decorationConfig.decoration();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      value: 'blue',
                      title: Text('blue'),
                      groupValue: _decorationColorValue,
                      onChanged: (value) {
                        setState(() {
                          _decorationColorValue = value;
                          decorationConfig.color = Colors.blue;
                          config.decoration = decorationConfig.decoration();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      value: 'yellow',
                      title: Text('yellow'),
                      groupValue: _decorationColorValue,
                      onChanged: (value) {
                        setState(() {
                          _decorationColorValue = value;
                          decorationConfig.color = Colors.yellow;
                          config.decoration = decorationConfig.decoration();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('image'),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        decorationConfig.image = DecorationImage(
                            image: AssetImage('images/lake.jpg'),
                            fit: BoxFit.cover);
                        config.decoration = decorationConfig.decoration();
                      });
                    },
                    child: Text('添加图片地址：'),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('border'),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        decorationConfig.border =
                            Border.all(width: 5.0, color: Colors.red);
                        config.decoration = decorationConfig.decoration();
                      });
                    },
                    child: Text('添加边框'),
                  )
                ],
              ),
            )
          ],
        )));
  }
}

class DecorationConfig {
  Color color;
  DecorationImage image;
  BoxBorder border;
  BorderRadiusGeometry borderRadius;
  List<BoxShadow> boxShadow;
  Gradient gradient;
  BlendMode backgroundBlendMode;
  BoxShape shape = BoxShape.rectangle;

  BoxDecoration decoration() {
    return new BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape);
  }

  @override
  String toString() {
    return 'color:$color \n'
        'image:$image \n'
        'border:$border \n'
        'borderRadius:$borderRadius \n'
        'boxShadow:$boxShadow \n'
        'gradient:$gradient \n'
        'backgroundBlendMode:$backgroundBlendMode \n'
        'shape:$shape \n';
  }
}

class Config {
  double width;
  double height;
  BoxConstraints constraints;
  Color color;
  Decoration decoration;
  AlignmentGeometry alignment;
  EdgeInsetsGeometry padding;
  Decoration foregroundDecoration;
  EdgeInsetsGeometry margin;
  Matrix4 transform;
  Widget child;

  @override
  String toString() {
    return 'width:$width \n'
        'heitht:$height \n'
        'constraints:$constraints \n'
        'color:$color \n'
        'margin:$margin \n'
        'padding:$padding \n'
        'transform:$transform \n'
        'alignment:$alignment \n'
        'decoration:$decoration \n'
        'foregroundDecoration:$foregroundDecoration \n';
  }
}
