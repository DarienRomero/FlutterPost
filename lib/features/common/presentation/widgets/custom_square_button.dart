import 'package:flutter/material.dart';

class CustomSquareButton extends StatelessWidget {
  final bool selected; 
  final IconData iconData;
  final String label;
  const CustomSquareButton({
    super.key,
    required this.selected,
    required this.iconData,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      onPressed: (){

      },
      elevation: 0,
      fillColor: selected ? Colors.white.withOpacity(0.2) : const Color(0x00000000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Icon(iconData, color: Colors.white),
          Text(label, style: const TextStyle(
            color: Colors.white,
            fontSize: 14
          ))
        ],
      )
    );
  }
}