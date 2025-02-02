import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class RightSettingsBar extends StatelessWidget {
  const RightSettingsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sidebarRightWidth,
      height: mqHeigth(context, 100) - topbarHeight,
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        border: Border(
          left: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1
          ),
        )
      ),
    );
  }
}