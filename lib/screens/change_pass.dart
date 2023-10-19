// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/input_widget.dart';
import '../widgets/password_input.dart';
import '../widgets/gradient_button_filled.dart';
import '../widgets/otp_input.dart';
import '../screens/login_page.dart';

class changePSS extends StatefulWidget {
  const changePSS({super.key});

  @override
  State<changePSS> createState() => _changePSSState();
}

class _changePSSState extends State<changePSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //Topbar
          SizedBox(
            height: 60,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Change Password",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          PasswordInput(
            textEditingController: TextEditingController(),
            hintText: "Please enter your new password",
          ),

          SizedBox(
            height: 8,
          ),

          confirm(
            hintText: "Please confirm your password",
            textEditingController: TextEditingController(),
          ),

          SizedBox(
            height: 14,
          ),

          GradientButtonFb1(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login_page()),
              );
            },
            text: "Change Password",
          )
        ]),
      ),
    );
  }
}
