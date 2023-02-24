import 'package:flutter/material.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/components/image_tile.dart';
import 'package:grocery_app/models/cart_item_model.dart';

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.cartItemModel,
  }) : super(key: key);

  CartItemModel cartItemModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 90,
      width: size.width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ImageTile(
              height: 70, width: 70, imgUrl: 'assets/images/cartitem.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                cartItemModel.name,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  const Icon(Icons.remove),
                  const SizedBox(width: 15),
                  CustomText(
                    cartItemModel.quantity.toString(),
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 15),
                  const Icon(Icons.add),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.close,
                color: Colors.red,
              ),
              CustomText(
                cartItemModel.totalValue.toString(),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
