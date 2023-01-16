import 'package:crisp_jobs/SerachResult.dart';
import 'package:crisp_jobs/Settingsroutes/Applications.dart';
import 'package:crisp_jobs/Settingsroutes/Editprofile.dart';
import 'package:crisp_jobs/Settingsroutes/NotificationsSettings.dart';
import 'package:crisp_jobs/homescreen.dart';
import 'package:crisp_jobs/login.dart';
import 'package:crisp_jobs/pages/Account.dart';
import 'package:crisp_jobs/pages/Message.dart';
import 'package:crisp_jobs/pages/Settings.dart';
import 'package:crisp_jobs/pages/jobapply.dart';
import 'package:crisp_jobs/signup.dart';
import 'package:crisp_jobs/onboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => crisp(),
        '/LG': (context) => Login(),
        '/SU': (context) => Signup(),
        '/SR': (context) => Searchresult(),
        '/HS': (context) => Homescreen(),
        'EP': (context) => Editprofile(),
        '/AP': (context) => Applications(),
        '/NS': (context) => Notifications(),
        'ST': (context) => Settings(),
      },
      debugShowCheckedModeBanner: false,
    ));
