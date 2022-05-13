import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/app_icon.dart';
import 'package:fooddelivery/widgets/big_text.dart';


import '../../widgets/app_column.dart';
import '../../widgets/exandable_text_widget.dart';
class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage(
                      "assets/images/img_2.png"

                  )


                )
              ),

            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
            Navigator.pop(context);
          },

                    child: AppIcone(icon: Icons.arrow_back_ios,)),
                AppIcone(icon: Icons.shopping_cart_outlined)


              ],

          ),),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),

                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Biryani",),
                  SizedBox(height: Dimensions.height20,),

                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20,),

                  Expanded(child: SingleChildScrollView(child: ExandaleTextWidget(
                      text: "Biryani is an evergreen classic that really needs no introduction. India offers so much on its culinary platter but the one dish Indians unanimously love indulging in is the mouth-watering biryani. With local and hyperlocal variations having evolved into distinctive styles of biryanis, one is spoilt for options when it comes to experiencing this melting pot of flavours. So if you are a die-hard fan of this delicious dish, take things up a notch and tease your taste buds a little more with the story of what makes biryani so extraordinary.")))
                ],

              ),

            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Color(0xFFf7f6f4),
          borderRadius: BorderRadius.only(

            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top:Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Color(0xFFa9a29f)),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),

                  SizedBox(width: Dimensions.width10/2,),

                  Icon(Icons.add,color: Color(0xFFa9a29f),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:Dimensions.height20, bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),

              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color(0xFF89dad0)
              ),
            )
          ],
        ),
      ),
    );
  }
}
