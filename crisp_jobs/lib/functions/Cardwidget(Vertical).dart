import 'package:flutter/material.dart';

Widget Vcard({final String? text, final Widget? Row, final Widget}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2, color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8)),
    height: 90,
    child: Row,
    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
  );
}
