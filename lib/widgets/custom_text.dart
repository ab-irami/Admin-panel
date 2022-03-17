import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  const CustomText({
    Key? key,
    this.text,
    this.size,
    this.weight,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }
}
