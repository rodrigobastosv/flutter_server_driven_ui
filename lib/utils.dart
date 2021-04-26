import 'package:flutter/material.dart';

import 'widgets.dart';

Future<Widget> buildUIFromResponse(Map jsonResponse) async {
  final key = jsonResponse['content']['type'];
  final widgetType = fromKey(key);
  final isRoot = isRootWidget(widgetType);
  if (isRoot) {
    final children = jsonResponse['content']['data']['children'] as List;
    final childrenWidget = _getChildrenWidgets(children);
    return widgetType == WidgetEnum.column
        ? Column(
            children: childrenWidget,
          )
        : Row(
            children: childrenWidget,
          );
  } else {
    if (widgetType == WidgetEnum.text) {
      return Text(jsonResponse['content']['data']['label']);
    }
  }

  return SizedBox.shrink();
}

List<Widget> _getChildrenWidgets(List<Map> children) {
  var childrenWidgets = <Widget>[];
  for (final child in children) {
    childrenWidgets.add(_geWidgetFromChild(child));
  }
  return childrenWidgets;
}

Widget _geWidgetFromChild(Map child) {
  final widgetType = fromKey(child['type']);
  final isRoot = isRootWidget(widgetType);
  if (isRoot) {
    final childrenWidget = _getChildrenWidgets(child['data']['children']);
    return widgetType == WidgetEnum.column
        ? Column(
            children: childrenWidget,
          )
        : Row(
            children: childrenWidget,
          );
  } else {
    if (widgetType == WidgetEnum.text) {
      return Text(child['data']['label']);
    }
  }
  return SizedBox.shrink();
}

bool isRootWidget(WidgetEnum widget) {
  switch (widget) {
    case WidgetEnum.column:
    case WidgetEnum.row:
      return true;
    case WidgetEnum.text:
      return false;
  }
  throw Exception();
}