import 'package:flutter/material.dart';
import 'package:flutter_widget/model/data.dart';

import 'model/column_info.dart';
import 'widgets/basics.dart';
import 'widgets/container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: _routes(),
    );
  }

  Map<String, WidgetBuilder> _routes() {
    return {
      "basics": (context) => BasicsWidget(),
      "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      "basics_container": (context) => ContainerDemo()
    };
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  List<ColumnInfo> list;

  @override
  void initState() {
    list = getColumnInfos();
    super.initState();
  }

  List<ColumnInfo> getColumnInfos() {
    List<ColumnInfo> list = List();
    ColumnInfo columnInfo = Data.getBasics();
    list.add(columnInfo);

    columnInfo = new ColumnInfo("Material Components",
        "实现了Material Design 指南的视觉、效果、motion-rich的widget。");
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Cupertino(iOS风格的widget)", "用于当前iOS设计语言的美丽和高保真widget。");
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Layout", "排列其它widget的columns、rows、grids和其它的layouts。");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("Text", "文本显示和样式");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("Assets、图片、Icons", "管理assets, 显示图片和Icon。");
    list.add(columnInfo);

    columnInfo = new ColumnInfo(
        "Input", "Material Components 和 Cupertino中获取用户输入的widget。");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("动画和Motion", "在您的应用中使用动画。查看Flutter中的动画总览");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("交互模型", "响应触摸事件并将用户路由到不同的页面视图（View）。");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("样式", "管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充。");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("绘制和效果", "Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置。");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("Async", "Flutter应用的异步模型");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("滚动", "滚动一个拥有多个子组件的父组件");
    list.add(columnInfo);

    columnInfo = new ColumnInfo("辅助功能", "给你的App添加辅助功能(这是一个正在进行的工作)");
    list.add(columnInfo);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: GridView.builder(
          itemCount: list.length,
          padding: EdgeInsets.all(20.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 0.5),
          itemBuilder: (BuildContext context, int index) {
            return _child(list[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _click(ColumnInfo columnInfo) {
    Navigator.of(context)
        .pushNamed(columnInfo.routeName, arguments: columnInfo);
  }

  Widget _child(ColumnInfo info) {
    return InkWell(
      onTap: () {
        _click(info);
      },
      child: Container(
        // constraints: BoxConstraints.expand(height: 200.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.blue[800]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                info.title,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                info.subTitle,
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
