import "package:ecom_app/components/cart_items.dart";
import "package:ecom_app/models/cart.dart";
import "package:ecom_app/models/shoe.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Text(
            'My Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individalShoe = value.getUserCart()[index];
                    return CartItem(
                      shoe: individalShoe,
                    );
                  }))
        ],
      ),
    );
  }
}
