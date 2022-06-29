import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:task1/components/button1.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/pattern.png',
            scale: 1.5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
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
                const Text(
                  'Sign-in ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 40),
                ),
                Container(
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    child: InternationalPhoneNumberInput(
                      initialValue: PhoneNumber(isoCode: 'EG'),
                      onInputChanged: (PhoneNumber value) {
                        print(value);
                      },
                    )),
                const MyButton(
                  myText: 'Sign In',
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'or',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      side: const BorderSide(width: 1.0, color: Colors.blue),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                          width: 30,
                          height: 30,
                        ),
                        const Text(
                          'Sign In with by Google',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have any account ?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register Here',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
