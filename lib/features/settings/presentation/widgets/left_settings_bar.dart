import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class LeftSettingsBar extends StatelessWidget {
  const LeftSettingsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sidebarWidth,
      height: mqHeigth(context, 100) - topbarHeight,
      color: Colors.blue,
    );
  }
}