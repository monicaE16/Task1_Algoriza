import 'package:flutter/material.dart';
import 'package:task1/pages/signin.dart';

class MyButton extends StatelessWidget {
  final String myText;
  final Color color;
  const MyButton({Key? key, required this.myText, this.color = Colors.teal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignIn()),
        );
      },
      minWidth: double.infinity,
      height: 60,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        myText,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
