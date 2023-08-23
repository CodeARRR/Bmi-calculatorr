// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final IconData? icon;
  final String title;

  const CardWidget({
    Key? key,
    this.icon,
    required this.title,
    required TextStyle style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is the inside column in the container
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
        )
      ],
    );
  }
}
