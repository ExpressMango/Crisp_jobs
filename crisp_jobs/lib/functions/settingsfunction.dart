import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Getprofile(
    {final String? text,
    final IconData? icon,
    final Color? color,
    final Function? ontap}) {
  return GestureDetector(
    onTap: (() {}),
    child: Vcard(
        Row: Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Text('$text'),
      ],
    )),
  );
}
