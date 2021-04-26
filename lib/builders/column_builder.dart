import 'package:flutter/material.dart';
import 'package:server_driven_ui/utils/utils.dart';

Column columnBuilder({
  Map data,
  List<Widget> children,
}) {
  return Column(
    mainAxisAlignment: getMainAlignment(data['mainAxisAlignment']),
    crossAxisAlignment: getCrossAlignment(data['crossAxisAlignment']),
    children: children,
  );
}
