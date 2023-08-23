import 'package:bmi_claculator/results.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  const BottomButton(
      {super.key, required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: KLargeButtonStyle,
        )),
        width: double.infinity,
        height: KBottomContainerHeight,
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.only(bottom: 20),
        color: KBottonContainerColor,
      ),
    );
  }
}
