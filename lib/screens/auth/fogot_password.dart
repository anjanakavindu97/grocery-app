import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/components/custome_textfield.dart';
import 'package:grocery_app/util/assets_constant.dart';

class FogotPassword extends StatefulWidget {
  const FogotPassword({super.key});

  @override
  State<FogotPassword> createState() => _FogotPasswordState();
}

class _FogotPasswordState extends State<FogotPassword> {
  final _email = TextEditingController();
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
                'Fogot Password',
                fontSize: 25,
              ),
              const SizedBox(height: 40),
              Image.asset(
                AssetsConstants.logoPath,
                width: 202,
                height: 138,
              ),
              const SizedBox(height: 100),
              const CustomText(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _email,
                hintText: 'Email',
              ),
              const SizedBox(height: 68),
              CustomButton(
                onTap: () {},
               text: 'Send',),
            ],
          ),
        ),
      ),
    );
  }
}
