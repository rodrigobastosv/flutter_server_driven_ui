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
      routes: {
        '/testRoute': (context) => Scaffold(
          backgroundColor: Color(0xFF4f958d),
        )
      },
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: UiBuilder(json: jsonResponseListView),
            ),
            Expanded(
              child: UiBuilder(json: jsonResponseBasic),
            ),
            Expanded(
              child: UiBuilder(json: jsonResponseSingleText),
            ),
            UiBuilder(json: jsonBasicContainer),
          ],
        ),
      ),
    );
  }
}
