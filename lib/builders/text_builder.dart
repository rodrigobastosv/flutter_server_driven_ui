import 'package:flutter/material.dart';
import 'package:server_driven_ui/props/props.dart';

Text textBuilder(Map data) {
  final style = data[TextProps.style];
  return Text(
    data[TextProps.label],
    style: style != null
        ? TextStyle(
            fontWeight: style[StyleProps.style] == 'bold'
                ? FontWeight.bold
                : FontWeight.normal,
          )
        : null,
  );
}
