import 'package:flutter/widgets.dart';

MainAxisAlignment getMainAlignment(String mainAlignment) {
  switch (mainAlignment) {
    case 'start':
      return MainAxisAlignment.start;
    case 'end':
      return MainAxisAlignment.end;
    case 'center':
      return MainAxisAlignment.center;
    case 'spaceAround':
      return MainAxisAlignment.spaceBetween;
    case 'spaceEvenly':
      return MainAxisAlignment.spaceEvenly;
    default:
      return MainAxisAlignment.start;
  }
}

CrossAxisAlignment getCrossAlignment(String crossAlignment) {
  switch (crossAlignment) {
    case 'start':
      return CrossAxisAlignment.start;
    case 'end':
      return CrossAxisAlignment.end;
    case 'center':
      return CrossAxisAlignment.center;
    case 'baseline':
      return CrossAxisAlignment.baseline;
    case 'stretch':
      return CrossAxisAlignment.stretch;
    default:
      return CrossAxisAlignment.start;
  }
}