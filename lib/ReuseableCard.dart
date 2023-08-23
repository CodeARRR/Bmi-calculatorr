// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color color;

  final Widget? cardChild;
  final VoidCallback? onpressed;

  ReuseableCard({
    Key? key,
    required this.color,
    this.cardChild,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
