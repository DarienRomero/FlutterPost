import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/features/common/presentation/widgets/custom_button.dart';
import 'package:flutter_post/features/common/presentation/widgets/h_fixed_spacing.dart';

class RequestsSendOptions extends StatelessWidget {
  final double sectionWidth;
  final double textFormFieldWidth;
  const RequestsSendOptions({
    super.key,
    required this.sectionWidth,
    required this.textFormFieldWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: sectionWidth - 148,
              height: inputHeigth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300]!),
              ),
              padding: const EdgeInsets.only(
                left: 180
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: inputHeigth - 20,
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              child: SizedBox(
                width: 200,
                height: inputHeigth,
                child: Center(
                  child: DropdownButton<String>(
                    value: 'POST',
                    dropdownColor: lightBackgroundColor,
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                    underline: Container(),
                    items: <String>['GET', 'POST', 'PUT', 'DELETE']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              value,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Manejar el cambio
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: SizedBox(
                width: textFormFieldWidth,
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'https://api.example.com',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              )
            ),
          ],
        ),
        const HFixedSpacing(16),
        CustomButton(
          label: 'Send',
          width: 100,
          color: const Color(0xff094CC8),
          onPressed: () {},
          heigth: buttonHeigth,
        ),
      ],
    );
  }
}