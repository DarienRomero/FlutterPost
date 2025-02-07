import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';
import 'package:flutter_post/features/requests/presentation/pages/requests_page.dart';
import 'package:flutter_post/features/requests/presentation/widgets/reorderable_tabs_list.dart';

class RequestsCenter extends StatelessWidget {
  const RequestsCenter({super.key});

  @override
  Widget build(BuildContext context) {
    final double sectionWith = mqWidth(context, 75) - sidebarLeftWidth - sidebarRightWidth;
    return Container(
      width: sectionWith,
      height: mqHeigth(context, 100) - topbarHeight,
      color: blackBackgroundColor,
      child: Column(
        children: [
          const ReadorderableTabsList(),
          RequestPage(
            sectionWidth: sectionWith
          ),
        ],
      )
    );
  }
}