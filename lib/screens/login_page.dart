import 'package:flutter/material.dart';
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';
import '../widgets/google.dart';
import '../widgets/github.dart';
import '../widgets/facebook.dart';
import '../widgets/twitter.dart';
import '../widgets/gradient_button_filled.dart';
import '../screens/sign_up_page.dart';
import '../screens/forgot_password_screen.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Sign in"),
        //   centerTitle: true,
        //   backgroundColor: Colors.blue[800],
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Sign in",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Please sign in to continue",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          EmailInputFb2(
            inputController: TextEditingController(),
          ),
          PasswordInput(
            textEditingController: TextEditingController(),
            hintText: "Please enter your password",
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const forgot_password()),
              );
            },
            child: const Text(
              "Forgot password?",
              style: TextStyle(color: Color(0xff4338CA)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const sign_up_page()),
              );
            },
            child: const Text(
              "Don't have any account?",
              style: TextStyle(color: Color(0xff4338CA)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GradientButtonFb1(
            onPressed: () {},
            text: "Sign in",
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("or login with?"),
          GoogleBtn1(
            onPressed: () {},
          ),
          // SizedBox(height: 2,),
          GitHubBtn1(
            onPressed: () {},
          ),
          FacebookBtn1(
            onPressed: () {},
          ),
          TwitterBtn1(
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
