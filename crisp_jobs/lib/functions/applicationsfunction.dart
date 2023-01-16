import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AF extends StatelessWidget {
  final String company;
  final String role;
  final String place;
  final Widget Status;
  final Widget Pay;
  final String companyimagepath;

  AF(
      {required this.Status,
      required this.company,
      required this.place,
      required this.role,
      required this.Pay,
      required this.companyimagepath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('$companyimagepath'),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '$company',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.4)),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Icon(Icons.menu_rounded)
                        ],
                      ),
                      Text(
                        '$role',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(1)),
                      ),
                      Text(
                        '$place',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.4)),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Status, Pay],
              )
            ],
          ),
        )
      ],
    );
  }
}
