import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            //Heading
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(
              height: 10,
            ),

            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              Shoe individualShoe = value.getUserCart()[index];

              //return the cart item
              return cartItem();
            }))
          ],
        ),
      ),
    );
  }
}
