import 'package:flutter/material.dart';
import 'package:crisp_jobs/login.dart';
import 'package:crisp_jobs/signup.dart';
import 'package:crisp_jobs/main.dart';
import 'package:crisp_jobs/functions.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Signup(),
    ));

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Register account',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Fill your details or continue\nwith social media',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                getextfield(
                  obstruct: false,
                  hint: 'Username',
                  prefixicon: Icon(Icons.person_outline),
                ),
                SizedBox(
                  height: 24,
                ),
                getextfield(
                    hint: 'E-mai Address',
                    prefixicon: Icon(Icons.email_outlined),
                    obstruct: false),
                SizedBox(
                  height: 24,
                ),
                getextfield(
                    hint: 'Password',
                    prefixicon: Icon(Icons.lock_outline),
                    obstruct: false,
                    suffix: Icon(Icons.visibility_off)),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4CA6A8)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/LG');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 140),
                      child: Text('SIGN UP',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          )),
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '-- or Continue With --',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 15,
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
                  height: 20,
                ),
                Wrap(
                  children: [
                    Text(
                      'Already Have an account? ',
                      style: GoogleFonts.poppins(),
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Text(
                        'Log in',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
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
