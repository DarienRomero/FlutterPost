import 'package:flutter/material.dart';

class HFixedSpacing extends StatelessWidget {
  final double value;
  const HFixedSpacing(this.value, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: value,
    );
  }
}