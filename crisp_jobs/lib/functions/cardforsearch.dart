import 'package:crisp_jobs/functions/Cardwidget(Horizontal).dart';
import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:flutter/material.dart';
import 'package:crisp_jobs/functions.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Vcardsearch({final Widget? text}) {
  return Container(
      child: Row(children: [
    Image(image: AssetImage('images/Facebook.png')),
    SizedBox(
      width: 20,
    ),
    Padding(
      padding: const EdgeInsets.only(top: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'UI/UX Designer',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.black.withOpacity(1)),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 196),
                child: Text(
                  '\$4500/m',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black.withOpacity(.5)),
                ),
              ),
            ],
          ),
          Text(
            'Full Time ',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.black.withOpacity(0.5)),
          ),
        ],
      ),
    )
  ]));
}
