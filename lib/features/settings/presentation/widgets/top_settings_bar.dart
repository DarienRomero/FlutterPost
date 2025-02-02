import 'package:flutter/material.dart';
import 'package:flutter_post/core/constants.dart';
import 'package:flutter_post/core/utils.dart';
import 'package:flutter_post/features/common/presentation/widgets/custom_text_button.dart';
import 'package:flutter_post/features/common/presentation/widgets/general_image.dart';
import 'package:flutter_post/features/common/presentation/widgets/h_fixed_spacing.dart';

class TopSettingsBar extends StatelessWidget {
  const TopSettingsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mqWidth(context, 100),
      height: topbarHeight,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20
      ),
      decoration: BoxDecoration(
        color: lightBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1
          ),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              CustomTextButton(
                label: 'Settings',
                onPressed: (){
                        
                },
              ),
              CustomTextButton(
                label: 'Workspaces',
                onPressed: (){
                        
                },
              ),
              CustomTextButton(
                label: 'API Network',
                onPressed: (){
                        
                },
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  bottom: 5
                ),
                width: avatarHeight * 3 - 30,
                child: const Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GeneralImage(
                      width: avatarHeight,
                      height: avatarHeight,
                      url: "",
                      fromLocal: false,
                      fit: BoxFit.cover,
                      borderRadius: 300,
                    ),
                    Positioned(
                      left: avatarHeight - 10,
                      child: GeneralImage(
                        width: avatarHeight,
                        height: avatarHeight,
                        url: "",
                        fromLocal: false,
                        fit: BoxFit.cover,
                        borderRadius: 300,
                      ),
                    ),
                    Positioned(
                      left: avatarHeight * 2 - 20,
                      child: GeneralImage(
                        width: avatarHeight,
                        height: avatarHeight,
                        url: "",
                        fromLocal: false,
                        fit: BoxFit.cover,
                        borderRadius: 300,
                      ),
                    ),
                  ],
                ),
              ),
              const HFixedSpacing(20),
              MaterialButton(
                color: const Color(0xff094CC8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                onPressed: (){
              
                },
                child: const Row(
                  children: [
                    Icon(Icons.add, color: Colors.white,),
                    Text("Invite", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}