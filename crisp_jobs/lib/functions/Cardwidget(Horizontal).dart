import 'package:flutter/material.dart';

Widget Hcard({
  final String? text,
  final Widget? Column,
}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2, color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8)),
    height: 100,
    width: 260,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Column,
    ),
    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
  );
}
