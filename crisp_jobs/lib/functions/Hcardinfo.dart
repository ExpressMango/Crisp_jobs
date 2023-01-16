import 'package:crisp_jobs/functions/Cardwidget(Horizontal).dart';
import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:crisp_jobs/functions/FilterFunction.dart';
import 'package:crisp_jobs/pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:crisp_jobs/functions.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HCI extends StatelessWidget {
  const HCI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white,
      ),
      child: Column(children: [
        Row(
          children: [
            SizedBox(
              width: 100,
            )
          ],
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/Spotifybig.png'),
          radius: 50,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'UI Design Lead',
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(1)),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Spotify ----',
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(1)),
              ),
              Icon(
                Icons.location_on_outlined,
                color: Colors.black.withOpacity(0.4),
              ),
              Text(
                'Toronto Canada',
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.4)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.punch_clock),
            Text(
              '   Full Time',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.4)),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              '\$1200/m',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: GoogleFonts.poppins(
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: GoogleFonts.poppins(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: GoogleFonts.poppins(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Qualifications:',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 20),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    '*',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Exceptional communication skills and team\nworking skills',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '*',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Exceptional communication skills and team\nworking skills',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [Text('data')],
              )
            ],
          ),
        )
      ]),
    );
  }
}
