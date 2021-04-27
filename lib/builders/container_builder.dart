import 'package:flutter/material.dart';
import 'package:server_driven_ui/props/props.dart';
import 'package:server_driven_ui/utils/utils.dart';

Container containerBuilder(Map data) {
  return Container(
    height: data[ContainerProps.height],
    width: data[ContainerProps.width],
    color: getColorFromHex(data[ContainerProps.color]),
  );
}
