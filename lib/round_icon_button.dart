import 'package:flutter/material.dart';
import 'constant.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;

  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      onPressed: onPressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
