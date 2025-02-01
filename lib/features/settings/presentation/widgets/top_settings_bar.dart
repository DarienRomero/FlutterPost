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
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1
          ),
        )
      ),
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