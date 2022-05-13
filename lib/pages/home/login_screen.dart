import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/widgets/auth_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'login-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: Column(
        children: [
          Expanded(child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 100,),
                Image.asset('assets/images/shopping-cart.png',
                  color: Colors.deepPurple.shade900,
                ),
                const SizedBox(height: 10,),
                Text('Zone',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple.shade900
                ),)
              ],
            ),
          ),),
          Expanded(
            child: Container(
              child: const AuthUi(),
            ),),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('If you continue, you are accepting\n Terms and Conditions and Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
                  fontSize: 10),),
          )
        ],


      ),
    );
  }
}
