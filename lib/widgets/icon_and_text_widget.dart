import 'package:flutter/material.dart';
import 'package:fooddelivery/widgets/small_text.dart';

import '../utils/dimensions.dart';
class IconandTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconandTextWidget({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: Dimensions.iconSize24,),
        SizedBox(width:5,),
        SmallText(text: text,),

      ],
    );
  }
}
