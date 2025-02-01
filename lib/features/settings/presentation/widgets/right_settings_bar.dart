import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class RightSettingsBar extends StatelessWidget {
  const RightSettingsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sidebarWidth,
      height: mqHeigth(context, 100) - topbarHeight,
      color: Colors.blue,
    );
  }
}