import 'package:flutter/material.dart';
import 'package:task1/components/ask_question.dart';
import 'package:task1/components/button1.dart';
import 'package:task1/components/head_title.dart';
import 'package:task1/components/or_divider.dart';
import 'package:task1/components/icon_button.dart';
import 'package:task1/components/phone_number.dart';
import 'package:task1/pages/register.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/pattern.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Welcome to Fashion Daily ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromARGB(255, 112, 104, 104), fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const HeadTitle(
                  title: 'Sign in',
                ),
                const SizedBox(
                  height: 20,
                ),
                const PhoneNumberFiled(),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  myText: 'Sign In',
                  borderRadius: 5.0,
                  color: Colors.blue,
                  myFunc: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const OrDivider(),
                const SizedBox(
                  height: 20,
                ),
                const IconButton1(),
                const SizedBox(
                  height: 15,
                ),
                AccountQuestion(
                  question: "Don't have any account ?",
                  help: "Register Here",
                  myFunc: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Use the application according to the policy rules. Any kind of violations will be subject to sanctions',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
