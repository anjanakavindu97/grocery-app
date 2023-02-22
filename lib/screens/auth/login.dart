import 'package:flutter/material.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/components/social_button.dart';
import 'package:grocery_app/util/assets_constant.dart';
import '../../components/custom_button.dart';
import '../../components/custome_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                const CustomText(
                  'Login',
                  fontSize: 25,
                ),
                const SizedBox(height: 40),
                Image.asset(
                  AssetsConstants.logoPath,
                  width: 202,
                  height: 138,
                ),
                const SizedBox(height: 40),
                CustomTextField(controller: _email, hintText: 'Email'),
                const SizedBox(height: 10),
                CustomTextField(
                    controller: _password, hintText: 'Password', isObscure: true),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      //redirect page to forgot password
                    },
                    child: const CustomText(
                      "Forgot your password?",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onTap: () {},
                  text: "Login",
                ),
                const SizedBox(height: 22),
                const CustomText(
                  'or login with social account',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      onTap: () {},
                      iconpath: AssetsConstants.google,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SocialButton(
                      onTap: () {},
                      iconpath: AssetsConstants.fb,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
