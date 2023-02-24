import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/models/cart_item_model.dart';
import 'package:grocery_app/screens/cart/Success.dart';
import 'widget/cart_item.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItemModel> cartItems = [
    CartItemModel(
        id: 1, name: 'Grapes', price: 150, quantity: 1, totalValue: 150),
    CartItemModel(
        id: 2, name: 'Tomato', price: 250, quantity: 2, totalValue: 250),
    CartItemModel(
        id: 3, name: 'Brinjol', price: 100, quantity: 3, totalValue: 100),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomText('Cart'),
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) => CartItem(
                    cartItemModel: cartItems[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
          child: Column(
            children: [
              const CartAmountRow(text: 'Item total', price: 'Rs: 200.50'),
              const SizedBox(height: 10),
              const CartAmountRow(text: 'Discount', price: 'Rs: -50.50'),
              const SizedBox(height: 10),
              const CartAmountRow(text: 'Taxt', price: 'Rs: 00.50'),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    'Total',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    '150.00',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Success(),
                      ),
                    );
                  },
                  text: 'Place Order')
            ],
          ),
        ),
      ),
    );
  }
}

class CartAmountRow extends StatelessWidget {
  const CartAmountRow({Key? key, required this.text, required this.price})
      : super(key: key);

  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        CustomText(
          price,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
