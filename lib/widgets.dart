enum WidgetType {
  column,
  row,
  text,
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
    default:
      throw Exception();
  }
}
