// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import '../widgets/input_widget.dart';
import '../widgets/password_input.dart';
import '../widgets/gradient_button_filled.dart';
import '../screens/otp_screen.dart';

class forgot_password extends StatefulWidget {
  const forgot_password({super.key});

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 60,
          ),
          //Topbar
          Align(
            alignment: Alignment.center,
            child: const Text(
              "Change Password",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Phone Varification
          Input(
            inputController: TextEditingController(), text: '',
          ),
          SizedBox(
            height: 10,
          ),
          GradientButtonFb1(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OPT()),
              );
            },
            text: "Send OTP",
          ),
        ]),
      ),
    );
  }
}
