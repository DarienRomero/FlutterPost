import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/features/common/presentation/widgets/custom_button.dart';
import 'package:flutter_post/features/common/presentation/widgets/h_fixed_spacing.dart';
import 'package:flutter_post/features/common/presentation/widgets/v_fixed_spacing.dart';
import 'package:flutter_post/features/requests/presentation/widgets/requests_send_options.dart';
import 'package:flutter_post/features/requests/presentation/widgets/requests_tabbar.dart';

class RequestPage extends StatelessWidget {
  final double sectionWidth;
  const RequestPage({
    super.key,
    required this.sectionWidth,
  });

  @override
  Widget build(BuildContext context) {
    final textFormFieldWidth = sectionWidth - 348;
    print(sectionWidth);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Column(
        children: [
          // Barra superior
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 60,
            child: Row(
              children: [
                Text('Oriapp', style: TextStyle(color: Colors.white.withOpacity(0.6))),
                const HFixedSpacing(5),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    initialValue: '/login',
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '/login',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          RequestsSendOptions(
            sectionWidth: sectionWidth, 
            textFormFieldWidth: textFormFieldWidth
          ),
          const VFixedSpacing(8),
          const RequestsTabBar()
        ],
      ),
    );
  }
}