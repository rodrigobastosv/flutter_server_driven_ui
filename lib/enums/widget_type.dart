enum WidgetType {
  column,
  row,
  listView,

  container,
  text,
  listTile,
}

extension WidgetTypeExt on WidgetType {
  String get asString => getStringFromWidgetType(this);
}

WidgetType getWidgetfromStringType(String type) {
  switch (type) {
    case 'column':
      return WidgetType.column;
    case 'row':
      return WidgetType.row;
    case 'text':
      return WidgetType.text;
    case 'listView':
      return WidgetType.listView;
    case 'listTile':
      return WidgetType.listTile;
    case 'container':
      return WidgetType.container;
    default:
      throw Exception();
  }
}

String getStringFromWidgetType(WidgetType type) {
  switch (type) {
    case WidgetType.column:
      return 'column';
    case WidgetType.row:
      return 'row';
    case WidgetType.text:
      return 'text';
    case WidgetType.listView:
      return 'listView';
    case WidgetType.listTile:
      return 'listTile';
    case WidgetType.container:
      return 'container';
    default:
      throw Exception();
  }
}