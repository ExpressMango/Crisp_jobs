import 'package:crisp_jobs/Settingsroutes/Applications.dart';
import 'package:crisp_jobs/Settingsroutes/Editprofile.dart';
import 'package:crisp_jobs/Settingsroutes/NotificationsSettings.dart';
import 'package:crisp_jobs/functions/Cardwidget(Vertical).dart';
import 'package:crisp_jobs/functions/settingsfunction.dart';
import 'package:crisp_jobs/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => Settings(),
        '/EP': (context) => Editprofile(),
        '/AP': (context) => Applications(),
        '/NS': (context) => Notifications(),
      },
    ));

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/gipsy.jpg'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Adom Shafi',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 30),
                ),
                Text(
                  'hellobesnik@gmail.com',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 14),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Getprofile(
                        text: 'Edit Profile',
                        icon: Icons.person,
                        color: Colors.orange),
                    SizedBox(
                      height: 20,
                    ),
                    Getprofile(
                        text: 'Applications (8)',
                        icon: Icons.lock_clock_rounded,
                        color: Color(0xFFff9087)),
                    SizedBox(
                      height: 20,
                    ),
                    Getprofile(
                        ontap: () {
                          Navigator.pushNamed(context, '/NS');
                        },
                        text: 'Notifications Settings',
                        icon: Icons.settings,
                        color: Colors.cyan),
                    SizedBox(
                      height: 20,
                    ),
                    Getprofile(
                        text: 'Share App',
                        icon: Icons.heat_pump_rounded,
                        color: Colors.pink),
                    SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/LG');
                            },
                            child: Getprofile(
                                color: Color(0xffFF454C),
                                text: 'Logout',
                                icon: Icons.arrow_back),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
