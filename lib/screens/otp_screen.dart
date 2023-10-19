import 'package:flutter/material.dart';

import '../widgets/input_widget.dart';
import '../widgets/password_input.dart';
import '../widgets/gradient_button_filled.dart';
import '../widgets/otp_input.dart';
import '../screens/change_pass.dart';

class OPT extends StatefulWidget {
  const OPT({super.key});

  @override
  State<OPT> createState() => _OPTState();
}

class _OPTState extends State<OPT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          //Topbar
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Enter OTP",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Input & Submit button
          otpInput(
            inputController: TextEditingController(),
            text: "",
          ),
          SizedBox(
            height: 10,
          ),

          GradientButtonFb1(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const changePSS()),
              );
            },
            text: "Submit",
          )
        ]),
      ),
    );
  }
}
