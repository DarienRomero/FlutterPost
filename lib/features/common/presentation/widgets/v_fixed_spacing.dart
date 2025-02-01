import 'package:flutter/material.dart';

class VFixedSpacing extends StatelessWidget {
  final double value;
  const VFixedSpacing(this.value, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: value,
    );
  }
}