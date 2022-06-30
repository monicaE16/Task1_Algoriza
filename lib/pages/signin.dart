import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sign-in ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 40),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('Help'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.help_rounded)
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 128, 125, 125)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextEditingController()..text = 'E.g 1054540227',
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 167, 163, 163),
                      decorationColor: Colors.white,
                      fontSize: 15),
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 2),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        borderSide: BorderSide(color: Colors.grey)),
                    prefixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CountryCodePicker(
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: '+20',
                          showFlagMain: false,
                          favorite: const ['+20', 'EG'],
                          textStyle: const TextStyle(
                              color: Colors.black,
                              decorationColor: Colors.white,
                              fontSize: 15),
                          showFlag: true,
                        ),
                        const Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyButton(
                  myText: 'Sign In',
                  borderRadius: 0.0,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 231, 228, 228),
                      ),
                    ),
                    Text(
                      ' Or ',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Expanded(
                      child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 231, 228, 228)),
                    ),
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
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have any account ?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register Here',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
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
