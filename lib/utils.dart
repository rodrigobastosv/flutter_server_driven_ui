import 'package:flutter/material.dart';

import 'builders/builders.dart';
import 'widgets.dart';

Widget buildUiFromResponse(Map jsonResponse) {
  final type = jsonResponse['content']['type'];
  final data = jsonResponse['content']['data'];

  return _buildFromRoot(
    type: type,
    data: data,
  );
}

Widget _buildFromRoot({
  @required String type,
  @required Map data,
}) {
  final widgetType = fromStringType(type);
  final isRoot = _hasChildrenWidget(widgetType);
  if (isRoot) {
    final children = data['children'] as List;
    final childrenWidget = _getChildrenWidgets(children);
    return _getRootWidgetByType(
      type: widgetType,
      data: data,
      childrenWidget: childrenWidget,
    );
  }
  return _getLeafWidgetByType(
    type: widgetType,
    data: data,
  );
}

List<Widget> _getChildrenWidgets(List<Map> children) {
  var childrenWidgets = <Widget>[];
  for (final child in children) {
    childrenWidgets.add(_geWidgetFromChild(child));
  }
  return childrenWidgets;
}

Widget _geWidgetFromChild(Map child) {
  final widgetType = fromStringType(child['type']);
  final isRoot = _hasChildrenWidget(widgetType);
  if (isRoot) {
    final data = child['data'];
    final children = data['children'] as List;
    final childrenWidget = _getChildrenWidgets(children);
    return _getRootWidgetByType(
      type: widgetType,
      data: data,
      childrenWidget: childrenWidget,
    );
  }
  return _getLeafWidgetByType(
    type: widgetType,
    data: child['data'],
  );
}

Widget _getRootWidgetByType({
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

Widget _getLeafWidgetByType({
  @required WidgetType type,
  @required Map data,
}) {
  switch (type) {
    case WidgetType.text:
      return textBuilder(data);
    case WidgetType.listTile:
      return listTileBuilder(data);
    default:
      throw Exception();
  }
}

bool _hasChildrenWidget(WidgetType widget) {
  switch (widget) {
    case WidgetType.column:
    case WidgetType.row:
    case WidgetType.listView:
      return true;
    case WidgetType.text:
    case WidgetType.listTile:
      return false;
  }
  throw Exception();
}
