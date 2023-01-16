import 'package:flutter/material.dart';

Widget getextfield({
  required String hint,
  final Widget? prefixicon,
  final Widget? suffix,
  required bool obstruct,
}) {
  return TextField(
    obscureText: obstruct,
    decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
        prefixIcon: prefixicon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
  );
}
