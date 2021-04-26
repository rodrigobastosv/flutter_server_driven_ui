import 'package:flutter/material.dart';

import 'builders/builders.dart';
import 'widgets.dart';

Future<Widget> buildUiFromResponse(Map jsonResponse) async {
  final key = jsonResponse['content']['type'];
  final widgetType = fromStringType(key);
  final isRoot = isRootWidget(widgetType);
  if (isRoot) {
    final data = jsonResponse['content']['data'];
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
    data: jsonResponse['content']['data'],
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
  final isRoot = isRootWidget(widgetType);
  if (isRoot) {
    final data = child['data'];
    final childrenWidget = _getChildrenWidgets(data['children']);
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
  return type == WidgetType.column
      ? columnBuilder(
          data: data,
          children: childrenWidget,
        )
      : rowBuilder(
          data: data,
          children: childrenWidget,
        );
}

Widget _getLeafWidgetByType({
  @required WidgetType type,
  @required Map data,
}) {
  if (type == WidgetType.text) {
    return textBuilder(data);
  }
  return SizedBox.shrink();
}

bool isRootWidget(WidgetType widget) {
  switch (widget) {
    case WidgetType.column:
    case WidgetType.row:
      return true;
    case WidgetType.text:
      return false;
  }
  throw Exception();
}
