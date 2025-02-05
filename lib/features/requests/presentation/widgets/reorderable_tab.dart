import 'package:flutter/material.dart';

class ReorderableTab extends StatelessWidget {
  final bool selected;
  final String label;
  final bool isLast;
  const ReorderableTab({
    super.key,
    required this.selected,
    required this.label,
    required this.isLast
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border(
              bottom: selected ? BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0
              ) : BorderSide.none,
            )
          ),
          width: 180,
          child: Center(
            child: Text(label, 
            style: const TextStyle(color: Colors.white)
            )
          )
        ),
        Container(
          height: 20,
          width: 1,
          margin: const EdgeInsets.only(
            top: 5
          ),
          color: Colors.grey[300]!.withOpacity(0.6)
        )
      ],
    );
  }
}