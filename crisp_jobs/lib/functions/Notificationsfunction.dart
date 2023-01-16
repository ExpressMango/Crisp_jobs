import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NF extends StatelessWidget {
  final String Boldtext;
  final String Subtext;
  final bool Bool;

  NF({required this.Boldtext, required this.Subtext, required this.Bool});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$Boldtext',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '$Subtext',
                      style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.4)),
                    )
                  ],
                ),
                Switch(
                  value: Bool,
                  onChanged: (bool newvalue) {},
                  activeColor: Colors.cyan,
                )
              ],
            )
          ],
        ),
      ],
    );
    ;
  }
}
