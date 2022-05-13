import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/big_text.dart';
import 'package:fooddelivery/widgets/icon_and_text_widget.dart';
import 'package:fooddelivery/widgets/small_text.dart';
class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BigText(text: text ,size: Dimensions.font26,),
        ),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {return Icon(Icons.star, color:Colors.cyan,size: 15,);}),
            ),
            SizedBox(width: 10,),
            SmallText(text: '4.5'),
            SizedBox(width: 10,),
            SmallText(text: '1287'),
            SizedBox(width: 10,),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            IconandTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: Color (0xFFffd28d)),
            IconandTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                iconColor: Color (0xFF89dad0)),
            IconandTextWidget(
                icon: Icons.access_time_rounded,
                text: "32min",
                iconColor: Color (0xFFfcab88)),
          ],
        )
      ],
    );
  }
}
