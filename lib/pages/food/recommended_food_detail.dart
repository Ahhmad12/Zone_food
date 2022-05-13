import 'package:flutter/material.dart';
class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/images/img_2.png",
              width: double.maxFinite,
                fit: BoxFit.cover,
              ),

            ),
          ),
          const SliverToBoxAdapter(
            child:
              Text( "Biryani is an evergreen classic that really needs no introduction. Pakistan offers so much on its culinary platter but the one dish Pakistan unanimously love indulging in is the mouth-watering biryani. With local and hyperlocal variations having evolved into distinctive styles of biryanis, one is spoilt for options when it comes to experiencing this melting pot of flavours. So if you are a die-hard fan of this delicious dish, take things up a notch and tease your taste buds a little more with the story of what makes biryani so extraordinary."),

          )
        ],
      ),
    );
  }
}
