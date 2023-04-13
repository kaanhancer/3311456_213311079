
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_items.dart';
import '../models/cart.dart';
import 'models/phone_features.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Phone individualPhone=value.getUserCart()[index];


                  return CartItems(phone: individualPhone);



                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
