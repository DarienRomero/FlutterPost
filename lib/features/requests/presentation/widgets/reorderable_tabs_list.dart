import 'package:flutter/material.dart';
import 'package:flutter_post/features/requests/presentation/widgets/reorderable_tab.dart';

class ReadorderableTabsList extends StatelessWidget {
  const ReadorderableTabsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ReorderableListView.builder(
        scrollDirection: Axis.horizontal,
        onReorder: (oldIndex, newIndex) {
          
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ReorderableTab(
            key: Key("Tab$index"),
            selected: index == 0, 
            label: "Prueba ${index + 1}", 
            isLast: index == 2
          );
        },
      ),
    );
  }
}