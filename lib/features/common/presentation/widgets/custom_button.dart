import 'package:flutter/material.dart';
import 'package:flutter_post/features/common/presentation/widgets/h_spacing.dart';

class CustomButton extends StatelessWidget {
  final FontWeight fontWeight;
  final VoidCallback? onPressed;
  final String label;
  final double width;
  final Color color;
  final double heigth;
  final double borderRadius;
  final bool disabled;
  final Widget? leading;
  final double fontSize;
  final bool loading;
  final Color labelColor;

  const CustomButton({
    super.key, 
    this.fontWeight = FontWeight.bold,
    required this.onPressed,
    required this.label,
    required this.width,
    required this.color,
    this.heigth = 60,
    this.borderRadius = 10,
    this.disabled = false,
    this.leading,
    this.fontSize = 18,
    this.loading = false, 
    this.labelColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 5)
          )
        ]
      ),
      child: MaterialButton(
        color: !disabled ? color : const Color(0xffeff4f5),
        minWidth: width,
        height: heigth,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        onPressed: () {
          if (disabled) return;
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              leading != null ? Row(
                children: [
                  leading!,
                  const HSpacing(1)
                ],
              ) : Container(),
              !loading ? Text(
                label,
                style: TextStyle(
                  color: disabled ? Theme.of(context).indicatorColor.withOpacity(0.4) : labelColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center
              ) : const SizedBox(
                width: 40,
                height: 40,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
