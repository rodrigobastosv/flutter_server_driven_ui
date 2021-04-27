import 'package:flutter/widgets.dart';
import 'package:server_driven_ui/builders/builders.dart';
import 'package:server_driven_ui/enums/enums.dart';

Widget getWidgetWithChildrenByType({
  @required WidgetType type,
  @required Map data,
  @required List<Widget> childrenWidget,
}) {
  switch (type) {
    case WidgetType.column:
      return columnBuilder(
        data: data,
        children: childrenWidget,
      );
    case WidgetType.column:
      return rowBuilder(
        data: data,
        children: childrenWidget,
      );
    case WidgetType.listView:
      return listViewBuilder(
        data: data,
        children: childrenWidget,
      );
    default:
      throw Exception();
  }
}

Widget getLeafWidgetByType({
  @required WidgetType type,
  @required Map data,
}) {
  switch (type) {
    case WidgetType.text:
      return textBuilder(data);
    case WidgetType.listTile:
      return listTileBuilder(data);
    case WidgetType.container:
      return containerBuilder(data);
    default:
      throw Exception();
  }
}