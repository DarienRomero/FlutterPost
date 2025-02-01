import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';

class FolderTree extends StatelessWidget {
  const FolderTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 25),
      height: mqHeigth(context, 100) - topbarHeight,
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        border: Border(
          right: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1
          ),
        )
      ),
      child: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}