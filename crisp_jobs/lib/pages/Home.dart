import 'package:crisp_jobs/functions/Cardwidget(Horizontal).dart';
import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:crisp_jobs/functions/FilterFunction.dart';
import 'package:crisp_jobs/functions/Hcardinfo.dart';
import 'package:crisp_jobs/pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:crisp_jobs/functions.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Message(),
    ));

class Message extends StatefulWidget {
  Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/gipsy.jpg'),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    child: getextfield(hint: 'Search here...', obstruct: false),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SR');
                      },
                      icon: Icon(Icons.search))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Popular Jobs',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 25)),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'show all',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () => showModalBottomSheet(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(60))),
                          context: context,
                          builder: (BuildContext context) =>
                              DraggableScrollableSheet(
                                initialChildSize: 1.7,
                                minChildSize: 0.1,
                                maxChildSize: 1.8,
                                expand: false,
                                builder: (context, scrollController) =>
                                    SingleChildScrollView(
                                  controller: scrollController,
                                  child: Column(
                                    children: [
                                      HCI(),
                                    ],
                                  ),
                                ),
                              )),
                      child: Hcard(
                          Column: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                  image: AssetImage('images/Googlesmall.png')),
                              SizedBox(
                                width: 140,
                              ),
                              Text('❤️'),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Google',
                                style: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(0.4)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Product Lead Manager',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(1)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Wrap(
                                children: [
                                  Text(
                                    '\$2500/m ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(1)),
                                  ),
                                  Text(
                                    'Toronto canada',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('images/spotifysmall.png')),
                            SizedBox(
                              width: 140,
                            ),
                            Text('❤️'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Spotify',
                              style: GoogleFonts.poppins(
                                  color: Colors.black.withOpacity(0.4)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Tech Lead',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(1)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  '\$3200/m ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(1)),
                                ),
                                Text(
                                  'Lagos Nigeria',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.4)),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                                image: AssetImage(
                              'images/Netflix.png',
                            )),
                            SizedBox(
                              width: 140,
                            ),
                            Text('❤️'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Netflix',
                              style: GoogleFonts.poppins(
                                  color: Colors.black.withOpacity(0.4)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Content Marketer',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(1)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  '\$2700/m ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(1)),
                                ),
                                Text(
                                  'NYC NewYork',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.4)),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Hcard(
                        Column: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('images/Facebook.png')),
                            SizedBox(
                              width: 140,
                            ),
                            Text('❤️'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Facebook',
                              style: GoogleFonts.poppins(
                                  color: Colors.black.withOpacity(0.4)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Design Lead',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(1)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  '\$4400/m ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(1)),
                                ),
                                Text(
                                  'Toronto canada',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.4)),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Recent Posts',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Vcard(
                        Row: Row(
                      children: [
                        Image(image: AssetImage('images/Facebook.png')),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'UI/UX Designer',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors.black.withOpacity(1)),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 196),
                                    child: Text(
                                      '\$4650/m',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(.5)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Full Time ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Vcard(
                        Row: Row(
                      children: [
                        Image(image: AssetImage('images/Spotifybig.png')),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Project Manager',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors.black.withOpacity(1)),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 196),
                                    child: Text(
                                      '\$1250/m',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(.5)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Part Time ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Vcard(
                        Row: Row(
                      children: [
                        Image(image: AssetImage('images/Netflix.png')),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Vfx Director',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors.black.withOpacity(1)),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 196),
                                    child: Text(
                                      '\$6350/m',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(.5)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Full Time ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Vcard(
                        Row: Row(
                      children: [
                        Image(image: AssetImage('images/Google.png')),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Growth Marketer',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors.black.withOpacity(1)),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 196),
                                    child: Text(
                                      '\$3450/m',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(.5)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Intern ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        )
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
        ));
  }
}
