import 'package:crisp_jobs/functions/messagefunction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
                Text(
                  '          Messages             ',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 643,
              child: ListView(
                children: [
                  MF(
                    Avatarimagepath: 'images/Anaya.jpg',
                    name: 'Rozanne Barrinettes',
                    message: 'What did you just say?',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Anaya Sanji',
                      message: 'What about paypal/',
                      Avatarimagepath: 'images/annaya.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Elizabeth Olsen',
                      message: 'We should move foward to talk with....',
                      Avatarimagepath: 'images/SW.jpeg'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Tony Stark',
                      message:
                          'If you want to invest you should talk to pepper',
                      Avatarimagepath: 'images/ironman.png'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Banner',
                      message: 'Let\'s have a call for future projects',
                      Avatarimagepath: 'images/Hulk.webp'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Steve Rogers',
                      message: 'i dont thin i can fit on this ui',
                      Avatarimagepath: 'images/cap.jpeg'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Thor Odinson',
                      message: 'i think you should join the avengers',
                      Avatarimagepath: 'images/Thor.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Natasha',
                      message: 'i\'m going to die in avengers endgame?',
                      Avatarimagepath: 'images/BW.jpeg'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Ultron',
                      message: 'Should we maove foward with plans',
                      Avatarimagepath: 'images/ultron.jpeg'),
                  SizedBox(
                    height: 20,
                  ),
                  MF(
                      name: 'Hawk eye',
                      message: 'bro i\'ve been trying to reach out ',
                      Avatarimagepath: 'images/HE.jpeg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
