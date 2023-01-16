import 'package:flutter/material.dart';
import 'package:crisp_jobs/login.dart';
import 'package:crisp_jobs/signup.dart';
import 'package:crisp_jobs/main.dart';
import 'package:crisp_jobs/functions.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Login(),
    ));

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Welcome Back',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Fill your details or continue\nwith social Media',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black.withOpacity(.6)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                getextfield(
                    obstruct: false,
                    hint: 'E-mail Address',
                    prefixicon: Icon(Icons.email_outlined)),
                SizedBox(
                  height: 24,
                ),
                getextfield(
                    obstruct: true,
                    prefixicon: Icon(Icons.lock_outlined),
                    hint: 'Password',
                    suffix: GestureDetector(
                      child: Icon(Icons.visibility_off_outlined),
                      onTap: () {},
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/HS');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 141,
                    ),
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff4CA6A8),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('-- or Continue with --', style: GoogleFonts.poppins()),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image(image: AssetImage('images/Google.png')),
                      onTap: () {
                        print('hello');
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      child: Image(image: AssetImage('images/Facebook.png')),
                      onTap: () {
                        print('hello');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Wrap(
                  children: [
                    Text(
                      'New User? ',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/SU'),
                      child: Text(
                        'Create Account',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
