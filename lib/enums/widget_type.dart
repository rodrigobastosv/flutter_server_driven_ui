enum WidgetType {
  column,
  row,
  listView,

  container,
  text,
  listTile,
}

extension WidgetTypeExt on WidgetType {
  String get toKey => this.toString();
}

WidgetType fromStringType(String type) {
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
