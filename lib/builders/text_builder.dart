import 'package:flutter/material.dart';

Text textBuilder(Map data) {
  final style = data['style'];
  return Text(
    data['label'],
    style: style != null
        ? TextStyle(
            fontWeight: style['fontWeight'] == 'bold'
                ? FontWeight.bold
                : FontWeight.normal,
          )
        : null,
  );
}
