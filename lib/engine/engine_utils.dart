import 'package:server_driven_ui/enums/widget_type.dart';
import 'package:server_driven_ui/utils/utils.dart';

bool validateJson(Map json) {
  if (json[JsonUtils.content] == null) {
    throw Exception('The Json must have the content property.');
  }
  return true;
}

bool hasChildrenWidget(WidgetType widget) {
  switch (widget) {
    case WidgetType.column:
    case WidgetType.row:
    case WidgetType.listView:
      return true;
    case WidgetType.container:
    case WidgetType.text:
    case WidgetType.listTile:
      return false;
  }
  throw Exception();
}
