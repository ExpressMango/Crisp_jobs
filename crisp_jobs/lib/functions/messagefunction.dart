import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MF extends StatelessWidget {
  final String name;
  final String message;
  final String Avatarimagepath;
  MF({
    required this.name,
    required this.message,
    required this.Avatarimagepath,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Avatarimagepath),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name',
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                '$message',
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
