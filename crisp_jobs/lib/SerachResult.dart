import 'package:crisp_jobs/functions/Cardforsearchresults.dart';
import 'package:crisp_jobs/functions/Cardwidget(Horizontal).dart';
import 'package:crisp_jobs/functions/FilterFunction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Searchresult(),
    ));

class Searchresult extends StatefulWidget {
  Searchresult({Key? key}) : super(key: key);

  @override
  State<Searchresult> createState() => _SearchresultState();
}

class _SearchresultState extends State<Searchresult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 35,
                      )),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Search',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ui Designer',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: (() {
                        showModalBottomSheet(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(60))),
                            context: context,
                            builder: (BuildContext context) =>
                                DraggableScrollableSheet(
                                  initialChildSize: 1.6,
                                  minChildSize: 0.1,
                                  maxChildSize: 1.7,
                                  expand: false,
                                  builder: (context, scrollController) =>
                                      SingleChildScrollView(
                                    controller: scrollController,
                                    child: Column(
                                      children: [
                                        FF(),
                                        SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.cyan,
                        ),
                        child: Icon(Icons.tune_rounded),
                        height: 50,
                        width: 50,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '35 New Job Opportunities',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 8),
                            child: Text(
                              'Most Relevant',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      )),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 8),
                              child: Text(
                                'Most Relevant',
                                style: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(.5),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )),
                  ),

                  // onPressed: ,
                  //
                  //     focusColor: Colors.cyan,
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 540,
                child: ListView(
                  children: [
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Facebook.png',
                            text1: 'Facebook',
                            text2: 'UI/UX Designer',
                            text3: '\$4550/m  Baltimore Ohio   06h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Dribble.png',
                            text1: 'Dribble',
                            text2: 'Product Designer',
                            text3: '\$6000/m  Baltimore USA   12h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Facebook.png',
                            text1: 'Facebook',
                            text2: 'Senior UI Designer',
                            text3: '\$5000/m  Idaho USA   24h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Google.png',
                            text1: 'Google',
                            text2: 'Growth Marketer',
                            text3: '\$3600/m  Mumbai India   08h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Spotifybig.png',
                            text1: 'Spotify',
                            text2: 'Project Manager',
                            text3: '\$7000/m  London UK   16h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Netflix.png',
                            text1: 'Netflix',
                            text2: 'Visual Designer',
                            text3: '\$4000/m  Lagos Nigeria   26h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        VcardHome(
                            imagespath: 'images/Google.png',
                            text1: 'Google',
                            text2: 'Senior Ux Designer',
                            text3: '\$6000/m  New York USA   30h')
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

// column With all the items in it

      // row with back arrow ans search text
      // job opportunity
      //row wit a few buttons in them
      // list with the job company, title, work hours and location
    );
  }
}
