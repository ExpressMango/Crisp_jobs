import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Account(),
    ));

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
