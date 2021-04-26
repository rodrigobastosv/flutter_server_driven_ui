import 'package:flutter/material.dart';

Container containerBuilder(Map data) {
  return Container(
    height: data['height'],
    width: data['width'],
    color: Colors.red,
  );
}
