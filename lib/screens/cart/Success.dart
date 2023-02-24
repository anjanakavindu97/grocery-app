import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/util/util_functions.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.sentiment_very_satisfied,
            color: Colors.green,
            size: 150,
          ),
          const CustomText(
            'Order Placed Successfully',
            fontSize: 20, 
            color: Colors.black, 
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20,),
          const CustomText(
            'Thank you for shopping with us',
            fontSize: 20, 
            color: Colors.black, 
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              UtilFunctions.navigateTo(context, const HomeScreen());
            },
            text: "Continue Shopping",
          ),
        ],
      ),
    ));
  }
}
