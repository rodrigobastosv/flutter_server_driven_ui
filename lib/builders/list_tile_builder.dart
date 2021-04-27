import 'package:flutter/material.dart';
import 'package:server_driven_ui/props/props.dart';

ListTile listTileBuilder(Map data) {
  return ListTile(
    title: Text(
      data[ListTileProps.title][ListTileProps.label],
    ),
  );
}
