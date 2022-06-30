import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
