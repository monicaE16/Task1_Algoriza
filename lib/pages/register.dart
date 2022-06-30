import 'package:flutter/material.dart';
import 'package:task1/components/ask_question.dart';
import 'package:task1/components/button1.dart';
import 'package:task1/components/head_title.dart';
import 'package:task1/components/input_field.dart';
import 'package:task1/components/or_divider.dart';
import 'package:task1/components/icon_button.dart';
import 'package:task1/components/phone_number.dart';
import 'package:task1/pages/signin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Wrap(children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
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
                        color: Color.fromARGB(255, 112, 104, 104),
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const HeadTitle(
                    title: 'Register',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(
                      name: 'Email', initialText: 'E.g example@example.com'),
                  const SizedBox(
                    height: 20,
                  ),
                  const PhoneNumberFiled(),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputField(
                    name: 'Password',
                    initialText: 'password',
                    icon: Icon(Icons.visibility_rounded),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    myText: 'Register',
                    borderRadius: 3.0,
                    color: Colors.blue,
                    myFunc: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const OrDivider(),
                  const SizedBox(
                    height: 15,
                  ),
                  const IconButton1(),
                  const SizedBox(
                    height: 10,
                  ),
                  AccountQuestion(
                    question: "Already have an account?",
                    help: "Sign in here",
                    myFunc: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          'By registering an account , you agree to our',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Terms and Conditions',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
