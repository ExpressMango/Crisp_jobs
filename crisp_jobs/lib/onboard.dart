import 'package:crisp_jobs/homescreen.dart';
import 'package:crisp_jobs/login.dart';
import 'package:crisp_jobs/main.dart';
import 'package:crisp_jobs/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: crisp(),
    ));

class crisp extends StatefulWidget {
  crisp({Key? key}) : super(key: key);

  @override
  State<crisp> createState() => _crispState();
}

class _crispState extends State<crisp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SafeArea(
                child: Container(
                    height: 50,
                    width: 50,
                    child: Image(image: AssetImage('images/Logo.png'))),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(child: Image(image: AssetImage('images/q.png'))),
          SizedBox(
            height: 62,
          ),
          Text('Find a Perfect\n Job Match',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 34,
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            'Finding Your Dream Job Is Easier\n       and Faster With JobHub',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(57, 30, 57, 30),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/LG');
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Let\'s Get Started',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
