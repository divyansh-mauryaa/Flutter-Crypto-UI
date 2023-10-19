import 'package:flutter/material.dart';
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';
import '../widgets/google.dart';
import '../widgets/github.dart';
import '../widgets/facebook.dart';
import '../widgets/twitter.dart';
import '../widgets/gradient_button_filled.dart';
import '../screens/login_page.dart';

class sign_up_page extends StatefulWidget {
  const sign_up_page({super.key});

  @override
  State<sign_up_page> createState() => _sign_up_pageState();
}

class _sign_up_pageState extends State<sign_up_page> {
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
              "Sign up",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Please create an account to continue",
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
            hintText: "Please create a strong password",
          ),
          confirm(
            textEditingController: TextEditingController(),
            hintText: "Please create a strong password",
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login_page()),
              );
            },
            child: const Text(
              "Already a member?",
              style: TextStyle(color: Color(0xff4338CA)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GradientButtonFb1(
            onPressed: () {},
            text: "Sign up",
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("or"),
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

// class confirm extends StatefulWidget {
//   final String hintText;
//   final TextEditingController textEditingController;

//   const confirm(
//       {required this.textEditingController, required this.hintText, Key? key})
//       : super(key: key);

//   @override
//   State<confirm> createState() => _confirmState();
// }

// class _confirmState extends State<confirm> {
//   bool pwdVisibility = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//       child: TextFormField(
//         controller: widget.textEditingController,
//         obscureText: !pwdVisibility,
//         decoration: InputDecoration(
//           label: const Text(
//             "Confirm Password",
//             style: TextStyle(color: Color(0xff4338CA)),
//           ),
//           hintText: widget.hintText,
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.grey,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(25.0),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.red,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(25.0),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.red,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(25.0),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: Colors.grey,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(25.0),
//           ),
//           suffixIcon: InkWell(
//             onTap: () => setState(
//               () => pwdVisibility = !pwdVisibility,
//             ),
//             child: Icon(
//               pwdVisibility
//                   ? Icons.visibility_outlined
//                   : Icons.visibility_off_outlined,
//               color: Colors.grey.shade400,
//               size: 14,
//             ),
//           ),
//         ),
//         validator: (val) {
//           if (val!.isEmpty) {
//             return 'Required';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }
