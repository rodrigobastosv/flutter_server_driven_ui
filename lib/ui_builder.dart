import 'package:flutter/material.dart';

import 'engine.dart';

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
  Widget widgetToBuild;

  @override
  void initState() {
    widgetToBuild = buildUiFromResponse(widget.json);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetToBuild;
  }
}
