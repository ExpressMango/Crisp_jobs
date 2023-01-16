import 'package:crisp_jobs/functions/Cardforsearchresults.dart';
import 'package:crisp_jobs/functions/Cardwidget(Horizontal).dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Filter',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Category',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'UI/UX Design',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_downward_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Sub Category',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Graphics Designer',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Location',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Salary',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_city,
                        color: Colors.black.withOpacity(0.5)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Canada',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.arrow_downward_rounded),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '\$2k-\$5k',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.arrow_downward_rounded),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Job Type',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                        'Full Time',
                        style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.6)),
                      )),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5))),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        'Part Time',
                        style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(1)),
                      )),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal,
                          border:
                              Border.all(color: Colors.black.withOpacity(0))),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        'Contract',
                        style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.6)),
                      )),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Center(
                          child: Text(
                        'Freelance',
                        style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(1)),
                      )),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal,
                          border:
                              Border.all(color: Colors.black.withOpacity(0))),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        'Remote',
                        style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.6)),
                      )),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5))),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        'Show All Types',
                        style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.6)),
                      )),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5))),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Apply Now'),
              style: ButtonStyle(),
            )
          ],
        ),
      ),
    );
  }
}
