enum ActionType {
  navigation,
}

extension ActionTypeExt on ActionType {
  String get toKey => this.toString();
}

ActionType fromStringType(String type) {
  switch (type) {
    case 'navigation':
      return ActionType.navigation;
    default:
      throw Exception();
  }
}