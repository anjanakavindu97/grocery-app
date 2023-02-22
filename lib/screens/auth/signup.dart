import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/components/custome_textfield.dart';
import 'package:grocery_app/util/assets_constant.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const CustomText(
                'SignUp',
                fontSize: 25,
              ),
              const SizedBox(height: 40),
              Image.asset(
                AssetsConstants.logoPath,
                width: 202,
                height: 138,
              ),
              const SizedBox(height: 40),
              CustomTextField(controller: _name, hintText: 'Name'),
              const SizedBox(height: 10),
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
                    "Already have an account?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onTap: () {},
                text: "Signup",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
