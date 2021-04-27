import 'package:flutter/material.dart';
import 'package:server_driven_ui/utils/utils.dart';

Container containerBuilder(Map data) {
  return Container(
    height: data['height'],
    width: data['width'],
    color: getColorFromHex(data['color']),
  );
}
