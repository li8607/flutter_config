
import 'package:flutter_widget/model/column_info.dart';

class Data {

  static ColumnInfo getBasics() {
    ColumnInfo columnInfo =
        new ColumnInfo("基础组件", "在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。");
    columnInfo.routeName = "basics";
    columnInfo.childs = _getBasicsChild();
    return columnInfo;
  }

  static List<ColumnInfo> _getBasicsChild() {
    List<ColumnInfo> list = List();
    ColumnInfo columnInfo =
        new ColumnInfo("Container", "一个拥有绘制、定位、调整大小的 widget。");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Row", "在水平方向上排列子widget的列表。");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Column", "在垂直方向上排列子widget的列表。");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Image", "一个显示图片的widget");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Text", "单一格式的文本");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Icon", "A Material Design icon.");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("RaisedButton", "Material Design中的button， 一个凸起的材质矩形按钮");
    columnInfo.routeName = "";
    list.add(columnInfo);


    columnInfo =
        new ColumnInfo("Scaffold", "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("Appbar", "一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。");
    columnInfo.routeName = "";
    list.add(columnInfo);

    columnInfo =
        new ColumnInfo("FlutterLogo", "Flutter logo, 以widget形式. 这个widget遵从IconTheme。");
    columnInfo.routeName = "";
    list.add(columnInfo);

     columnInfo =
        new ColumnInfo("Placeholder", "一个绘制了一个盒子的的widget，代表日后有widget将会被添加到该盒子中");
    columnInfo.routeName = "";
    list.add(columnInfo);
    return list;
  }

}