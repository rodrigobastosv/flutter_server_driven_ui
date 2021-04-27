import 'package:flutter/widgets.dart';
import 'package:server_driven_ui/enums/enums.dart';
import 'package:server_driven_ui/utils/json_utils.dart';

GestureDetector getGestureWidget({
  BuildContext context,
  Map action,
  Widget widget,
}) {
  return GestureDetector(
    onTap: () {
      final actionType = getActionFromStringType(action[JsonUtils.type]);
      if (actionType == ActionType.navigation) {
        if (action[JsonUtils.target] == null) {
          throw Exception('A navigation action must have a target property.');
        }
        Navigator.of(context).pushNamed(action[JsonUtils.target]);
      }
    },
    child: widget,
  );
}
