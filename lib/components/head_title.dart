import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  final String title;
  const HeadTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 40),
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
    );
  }
}