enum WidgetEnum {
  column,
  row,
  text,
}

extension WidgetEnumExt on WidgetEnum {
  String get toKey => this.toString();
}

WidgetEnum fromKey(String key) {
  switch (key) {
    case 'column':
      return WidgetEnum.column;
    case 'row':
      return WidgetEnum.row;
    case 'text':
      return WidgetEnum.text;
    default:
      throw Exception();
  }
}
