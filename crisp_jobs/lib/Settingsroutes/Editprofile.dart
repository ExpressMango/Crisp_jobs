import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Editprofile(),
    ));

class Editprofile extends StatefulWidget {
  Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Edit Profile',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          );
        }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/ironman.png'),
          ),
          Text(
            'Adom Shafi',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 30),
          ),
          Text(
            'Edit Profile',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black.withOpacity(0.4)),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '         Adom shafi',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Your E-mail',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '         Hellobesnik@gmail.com',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '         ********************',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1),
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
