import 'package:flutter/material.dart';
import 'package:server_driven_ui/jsonResponse.dart';

import 'utils.dart';

class UIBuilder extends StatefulWidget {
  UIBuilder({Key key}) : super(key: key);

  @override
  _UIBuilderState createState() => _UIBuilderState();
}

class _UIBuilderState extends State<UIBuilder> {
  bool loading = true;
  Widget widgetToBuild;

  @override
  void initState() {
    buildUIFromResponse(jsonResponse3).then((widget) {
      setState(() {
        widgetToBuild = widget;
        loading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loading ? CircularProgressIndicator() : widgetToBuild;
  }
}
