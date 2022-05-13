import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fooddelivery/widgets/small_text.dart';

import '../utils/dimensions.dart';
class ExandaleTextWidget extends StatefulWidget {
  final String text;
  const ExandaleTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExandaleTextWidget> createState() => _ExandaleTextWidgetState();
}

class _ExandaleTextWidgetState extends State<ExandaleTextWidget> {
  late String firsthalf;
  late String secondhalf;
  bool hiddenText=true;
  double textHeight=Dimensions.screenHeight/5.63;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firsthalf = widget.text.substring(0, textHeight.toInt());
      secondhalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    }

    else {
      firsthalf = widget.text;
      secondhalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty?SmallText(color:Color(0xFF8f837f),size:Dimensions.font16,text: firsthalf): Column(
        children: [
          SmallText(height:1.8,color:Color(0xFF8f837f),size:Dimensions.font16,text: hiddenText?(firsthalf+"..."):(firsthalf+secondhalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;

              });

            },
            child: Row(
              children: [
                SmallText(text: "Show more", color: Color(0xFF89dad0),),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Color(0xFF89dad0),)
              ],
            ),
          )
        ],
      ),


    );
  }
}
