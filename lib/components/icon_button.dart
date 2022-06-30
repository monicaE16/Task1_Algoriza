import 'package:flutter/material.dart';

class IconButton1 extends StatelessWidget {
  const IconButton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
        ));
  }
}

