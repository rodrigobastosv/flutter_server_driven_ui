import 'package:flutter/material.dart';

import 'utils.dart';

class UiBuilder extends StatefulWidget {
  UiBuilder({
    Key key,
    @required this.json,
  }) : super(key: key);

  final Map json;

  @override
  _UiBuilderState createState() => _UiBuilderState();
}

class _UiBuilderState extends State<UiBuilder> {
  bool loading = true;
  Widget widgetToBuild;

  @override
  void initState() {
    buildUiFromResponse(widget.json).then((widget) {
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
