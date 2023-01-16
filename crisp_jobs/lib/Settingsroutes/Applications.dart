import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:crisp_jobs/functions/applicationsfunction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Applications(),
    ));

class Applications extends StatefulWidget {
  Applications({Key? key}) : super(key: key);

  @override
  State<Applications> createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Applications',
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new));
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Your Applications',
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              height: 648,
              child: ListView(
                children: [
                  AF(
                    Status: Text(
                      'Delivered              ',
                      style: GoogleFonts.poppins(
                          color: Colors.blue[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    company: 'Facebook',
                    place: 'Toronto Canada',
                    role: 'UI/UX Designer',
                    Pay: Text(
                      '\$4500 Monthly',
                      style: GoogleFonts.poppins(
                          color: Colors.blue[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    companyimagepath: 'images/Facebook.png',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AF(
                    Status: Text(
                      'Delivered              ',
                      style: GoogleFonts.poppins(
                          color: Colors.pink[300],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    company: 'Dribble',
                    place: 'New York, USA',
                    role: 'Visual Designer',
                    Pay: Text(
                      '\$1200 Monthly',
                      style: GoogleFonts.poppins(
                          color: Colors.pink[300],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    companyimagepath: 'images/Dribble.png',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AF(
                    Status: Text(
                      'Pending              ',
                      style: GoogleFonts.poppins(
                          color: Colors.blue[600],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    company: 'Google',
                    place: 'Aspen Colorado, USA ',
                    role: 'Project Manager',
                    Pay: Text(
                      '\$3500 Monthly',
                      style: GoogleFonts.poppins(
                          color: Colors.blue[600],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    companyimagepath: 'images/Google.png',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AF(
                    Status: Text(
                      'Pending              ',
                      style: GoogleFonts.poppins(
                          color: Color(0xff1ED760),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    company: 'Spotify',
                    place: 'New York, USA',
                    role: 'UI/UX Designer',
                    Pay: Text(
                      '\$6000 Monthly',
                      style: GoogleFonts.poppins(
                          color: Color(0xff1ED760),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    companyimagepath: 'images/Spotifybig.png',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AF(
                    Status: Text(
                      'Delivered             ',
                      style: GoogleFonts.poppins(
                          color: Colors.red[800],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    company: 'Netflix',
                    place: 'New Mexico, USA',
                    role: 'Video Editor',
                    Pay: Text(
                      '\$4400 Monthly',
                      style: GoogleFonts.poppins(
                          color: Colors.red[800],
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    companyimagepath: 'images/Netflix.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
