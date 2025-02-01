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
      color: Colors.blue[300],
      child: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}