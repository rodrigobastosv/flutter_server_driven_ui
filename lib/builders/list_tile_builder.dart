import 'package:flutter/material.dart';

ListTile listTileBuilder(Map data) {
  return ListTile(
    title: Text(data['title']['label']),
  );
}