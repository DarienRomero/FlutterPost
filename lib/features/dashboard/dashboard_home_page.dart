import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';
import 'package:flutter_post/features/collections/presentation/widgets/folder_tree.dart';
import 'package:flutter_post/features/requests/presentation/widgets/requests_center.dart';
import 'package:flutter_post/features/settings/presentation/widgets/left_settings_bar.dart';
import 'package:flutter_post/features/settings/presentation/widgets/right_settings_bar.dart';
import 'package:flutter_post/features/settings/presentation/widgets/top_settings_bar.dart';

class DashboardHomePage extends StatelessWidget {
  const DashboardHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopSettingsBar(),
          SizedBox(
            width: mqWidth(context, 100),
            height: mqHeigth(context, 100) - topbarHeight,
            child: const Row(
              children: [
                LeftSettingsBar(),
                FolderTree(),
                RequestsCenter(),
                RightSettingsBar(),
              ],
            )
          )
        ],
      )
    );
  }
}