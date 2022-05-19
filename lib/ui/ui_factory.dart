import 'package:commit451/ui/commit451_styles.dart';
import 'package:flutter/material.dart';

Widget verticalSeparator() {
  return const SizedBox(
    height: 20.0,
  );
}

Widget horizontalSeparator() {
  return const SizedBox(
    width: 20.0,
  );
}

Widget title(String title) {
  return SelectableText(
    title,
    style: titleStyle,
  );
}

Widget text(String text) {
  return SelectableText(
    text,
    style: bodyStyle,
  );
}
