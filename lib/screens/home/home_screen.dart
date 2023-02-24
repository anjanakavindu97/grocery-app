import 'package:flutter/material.dart';
import 'package:grocery_app/components/custome_text.dart';
import 'package:grocery_app/screens/cart/cart.dart';
import 'widgets/product_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(Icons.grid_3x3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cart(),
                        ),
                      );
                    },
                    child: const Icon(Icons.shopping_cart),
                  ), // Add an Icon widget here
                ],
              ),
              const SizedBox(height: 25),
              const CustomText(
                "Vegetables",
                fontSize: 25,
              ),
              const SizedBox(height: 42),
              ProductGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        onTap: (index) {
    switch (index) {
      case 0:
        // Navigate to the home screen
        break;
      case 1:
        // Navigate to the cart screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Cart()),
        );
        break;
      case 2:
        // Navigate to the search screen
        break;
    }
  },
      ),
    );
  }
}
