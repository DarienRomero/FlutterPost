import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';
import 'package:flutter_post/features/common/presentation/widgets/custom_square_button.dart';
import 'package:flutter_post/features/common/presentation/widgets/v_fixed_spacing.dart';

class LeftSettingsBar extends StatelessWidget {
  const LeftSettingsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sidebarWidth,
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
      child: const Column(
        children: [
          VFixedSpacing(10),
          CustomSquareButton(
            selected: true,
            iconData: Icons.folder_open,
            label: "Collection",
          ),
          VFixedSpacing(10),
          CustomSquareButton(
            selected: false,
            iconData: Icons.folder_open,
            label: "Environments",
          ),
        ],
      ),
    );
  }
}