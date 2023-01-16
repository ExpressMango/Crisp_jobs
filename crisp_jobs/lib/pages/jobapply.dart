import 'package:crisp_jobs/Settingsroutes/Applications.dart';
import 'package:crisp_jobs/Settingsroutes/Editprofile.dart';
import 'package:crisp_jobs/Settingsroutes/NotificationsSettings.dart';
import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:crisp_jobs/functions/settingsfunction.dart';
import 'package:crisp_jobs/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobApply extends StatefulWidget {
  JobApply({Key? key}) : super(key: key);

  @override
  State<JobApply> createState() => _JobApplyState();
}

class _JobApplyState extends State<JobApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Job Apply',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 22, color: Colors.black),
        ),
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new));
        }),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Adom',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(1)),
                    )
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Name',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Shafi',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(1)),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your E-mail',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    Text(
                      'Hellobesnik@gmail.com',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(1)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Country',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Text('USA'),
                        SizedBox(
                          width: 250,
                        ),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Message',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      ' I love being a part of the creative process\n and the challenge of making a complex\n but simple to use products. Specializing in \n both The User interface, and Exprience ',
                      style: GoogleFonts.poppins(letterSpacing: 1.3),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'CV',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.4)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Upload Here',
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.4)),
          ),
          Icon(
            Icons.pages_rounded,
            color: Colors.black.withOpacity(0.4),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 9),
                child: Text(
                  'Apply Now',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
