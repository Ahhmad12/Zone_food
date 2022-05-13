import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.white,
      Colors.deepPurple,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
      fontFamily: 'Lato',
    );
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/shopping-cart.png',
              color: Colors.white,),

            const SizedBox(
              height:10,
            ),
            const Padding(padding:  EdgeInsets.only(top: 30)),

            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(

                  'Zone',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),

              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ],
        ),


      ),
    );

  }
}
