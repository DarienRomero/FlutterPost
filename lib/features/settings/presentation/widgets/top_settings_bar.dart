import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class TopSettingsBar extends StatelessWidget {
  const TopSettingsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 100),
      height: topbarHeight,
      color: Colors.red,
      child: const SafeArea(
        child: Column(
          children: [
            Text("Hola"),
          ],
        ),
      ),
    );
  }
}