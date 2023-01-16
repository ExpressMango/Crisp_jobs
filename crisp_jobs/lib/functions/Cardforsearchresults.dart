import 'package:crisp_jobs/functions/Cardwidget(Horizontal).dart';
import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:flutter/material.dart';
import 'package:crisp_jobs/functions.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VcardHome extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String imagespath;
  VcardHome(
      {required this.text1,
      required this.text2,
      required this.text3,
      required this.imagespath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset('$imagespath'),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$text1',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    SizedBox(width: 150),
                    Text('❤️')
                  ],
                ),
                Text(
                  '$text2',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black.withOpacity(1)),
                ),
                Text(
                  '$text3',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
