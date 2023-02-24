import 'package:flutter/material.dart';
import 'package:grocery_app/models/vegetable.dart';
import 'product_title.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({
    Key? key,
  }) : super(key: key);

   final List<Vegetable> vagetables = [
    Vegetable(id: 1, name: "Ca.flower", price: 2.99, image: "1.png"),
    Vegetable(id: 2, name: "Pumking", price: 2.99, image: "2.png"),
    Vegetable(id: 3, name: "Union", price: 2.99, image: "3.png"),
    Vegetable(id: 4, name: "Brinjol", price: 2.99, image: "4.png"),
    Vegetable(id: 5, name: "Tomato", price: 2.99, image: "5.png"),
    Vegetable(id: 6, name: "Egg", price: 2.99, image: "6.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 44,
        ),
        itemCount: vagetables.length,
        itemBuilder: (context, index) => ProductTile(vagetable: vagetables[index]),
      ),
    );
  }
}

