import 'package:flutter/material.dart';

class AccountQuestion extends StatelessWidget {
  final String question;
  final String help;
    final VoidCallback myFunc;

  const AccountQuestion({
    required this.question,
    required this.help,
    required this.myFunc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        TextButton(
          onPressed: myFunc,
          child:  Text(help,
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
