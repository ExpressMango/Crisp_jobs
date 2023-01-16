import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:crisp_jobs/functions/Notificationsfunction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Notifications(),
    ));

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ));
        }),
        title: Text(
          'Notifications',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            children: [
              NF(
                Bool: true,
                Boldtext: 'New Post',
                Subtext: 'If any new posts update',
              ),
              SizedBox(
                height: 25,
              ),
              NF(
                Bool: true,
                Boldtext: 'Got Hired',
                Subtext: 'If you get hired by any company',
              ),
              SizedBox(
                height: 25,
              ),
              NF(
                Bool: false,
                Boldtext: 'Got Rejected',
                Subtext: 'If you get rejected by any company',
              ),
              SizedBox(
                height: 25,
              ),
              NF(
                Bool: true,
                Boldtext: 'Message',
                Subtext: 'If you get message from any company',
              ),
              SizedBox(
                height: 25,
              ),
              NF(
                Bool: false,
                Boldtext: 'Call',
                Subtext: 'If you get a call',
              ),
              SizedBox(
                height: 25,
              ),
              NF(
                Bool: false,
                Boldtext: 'Dark Mode',
                Subtext: 'Enable darkmode',
              ),
            ],
          )),
    );
  }
}
