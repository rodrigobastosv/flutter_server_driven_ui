import 'package:flutter/widgets.dart';
import 'package:server_driven_ui/enums/enums.dart';

GestureDetector getGestureWidget({
  BuildContext context,
  Map action,
  Widget widget,
}) {
  return GestureDetector(
    onTap: () {
      final actionType = getActionFromStringType(action['type']);
      if (actionType == ActionType.navigation) {
        if (action['target'] == null) {
          throw Exception('A navigation action must have a target property.');
        }
        Navigator.of(context).pushNamed(action['target']);
      }
    },
    child: widget,
  );
}
