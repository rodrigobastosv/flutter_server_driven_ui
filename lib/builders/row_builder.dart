import 'package:flutter/material.dart';
import 'package:server_driven_ui/utils/utils.dart';

Row rowBuilder({
  Map data,
  List<Widget> children,
}) {
  return Row(
    mainAxisAlignment: getMainAlignment(data['mainAxisAlignment']),
    crossAxisAlignment: getCrossAlignment(data['crossAxisAlignment']),
    children: children,
  );
}