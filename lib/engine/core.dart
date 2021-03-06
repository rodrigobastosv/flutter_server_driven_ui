import 'package:flutter/material.dart';
import 'package:server_driven_ui/enums/enums.dart';
import 'package:server_driven_ui/utils/utils.dart';

import 'builder_utils.dart';
import 'engine.dart';

Widget buildUiFromResponse(BuildContext context, Map jsonResponse) {
  if (validateJson(jsonResponse)) {
    final content = jsonResponse[JsonUtils.content];
    final type = content[JsonUtils.type];
    final data = content[JsonUtils.data];
    final action = content[JsonUtils.action];

    return _buildFromRoot(
      context: context,
      type: type,
      data: data,
      action: action,
    );
  }
  return SizedBox.shrink();
}

Widget _buildFromRoot({
  @required BuildContext context,
  @required String type,
  @required Map data,
  @required Map action,
}) {
  final widgetType = getWidgetfromStringType(type);
  final hasChildren = hasChildrenWidget(widgetType);
  final hasGesture = action != null;
  Widget widget;
  if (hasChildren) {
    final children = data[JsonUtils.children] as List;
    final childrenWidget = _getChildrenWidgets(context, children);
    widget = getWidgetWithChildrenByType(
      type: widgetType,
      data: data,
      childrenWidget: childrenWidget,
    );
  } else {
    widget = getLeafWidgetByType(
      type: widgetType,
      data: data,
    );
  }
  return hasGesture
      ? getGestureWidget(context: context, action: action, widget: widget)
      : widget;
}

List<Widget> _getChildrenWidgets(BuildContext context, List<Map> children) {
  var childrenWidgets = <Widget>[];
  for (final child in children) {
    childrenWidgets.add(
      _buildFromRoot(
        context: context,
        type: child[JsonUtils.type],
        data: child[JsonUtils.data],
        action: child[JsonUtils.action],
      ),
    );
  }
  return childrenWidgets;
}
