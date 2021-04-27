enum ActionType {
  navigation,
}

extension ActionTypeExt on ActionType {
  String get asString => getStringFromActionType(this);
}

ActionType getActionFromStringType(String type) {
  switch (type) {
    case 'navigation':
      return ActionType.navigation;
    default:
      throw Exception();
  }
}

String getStringFromActionType(ActionType type) {
  switch (type) {
    case ActionType.navigation:
      return 'navigation';
    default:
      throw Exception();
  }
}