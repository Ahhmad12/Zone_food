import 'dart:html';
import 'dart:ui';
import 'package:fooddelivery/pages/home/food_page_body.dart';
import 'package:flutter/material.dart';

import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/big_text.dart';
import 'package:fooddelivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
   // print("current height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Pakistan", color:Color(0xFF69c5df),),
                      Row(
                        children: [
                          SmallText(text: "Lahore",color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)

                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width :Dimensions.height45,
                      height:Dimensions.height45,
                      child: Icon(Icons.search , color: Colors.white,size: Dimensions.iconSize24,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: Color(0xFF69c5df),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ),)
        ],
      ),
    );
  }
}
