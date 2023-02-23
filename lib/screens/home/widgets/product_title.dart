
import 'package:flutter/material.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/models/vegetable.dart';
import 'package:grocery_app/util/app_color.dart';
import 'package:grocery_app/util/assets_constant.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.vagetable,
  }) : super(key: key);

  final Vegetable vagetable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      decoration: BoxDecoration(
        color: const Color(0xffEBF8EE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.favorite_border,
            ),
          ),
          Image.asset(
            AssetsConstants.vegetablePath +
                vagetable.image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Container(
            height: 38,
            padding: const EdgeInsets.symmetric(horizontal: 9),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  vagetable.name,
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  "\Rs ${vagetable.price}.00",
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}