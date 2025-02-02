import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class RequestsCenter extends StatelessWidget {
  const RequestsCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 75) - sidebarLeftWidth - sidebarRightWidth,
      height: mqHeigth(context, 100) - topbarHeight,
      color: blackBackgroundColor,
      child: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}