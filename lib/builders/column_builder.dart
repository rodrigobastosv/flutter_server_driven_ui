import 'package:flutter/material.dart';
import 'package:server_driven_ui/props/props.dart';
import 'package:server_driven_ui/utils/utils.dart';

Column columnBuilder({
  @required Map data,
  @required List<Widget> children,
}) {
  return Column(
    mainAxisAlignment: getMainAlignment(data[ColumnProps.mainAxisAlignment]),
    crossAxisAlignment: getCrossAlignment(data[ColumnProps.crossAxisAlignment]),
    children: children,
  );
}
