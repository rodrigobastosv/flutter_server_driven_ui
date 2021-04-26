import 'package:flutter/material.dart';
import 'package:server_driven_ui/jsonResponse.dart';

import 'ui_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: UiBuilder(json: jsonResponseListView),
        ),
      ),
    );
  }
}
