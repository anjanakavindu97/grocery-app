import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/screens/auth/login.dart';
import 'package:grocery_app/screens/auth/signup.dart';
import 'package:grocery_app/util/assets_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUp(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              child: Image.asset(
                AssetsConstants.logoPath,
                width: 331,
                height: 225,
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            FadeInUp(
              child: const CustomText(
                'Shop Your Daily \nNecessart',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
