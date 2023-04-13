
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/phone_features.dart';

class CartItems extends StatefulWidget {
  Phone phone;
  CartItems({super.key, required this.phone});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  void removeItemsFromCart(){
    Provider.of<Cart>(context,listen: false).removeFromCart(widget.phone);

  }



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.phone.imagePath),
        title: Text(widget.phone.name),
        subtitle: Text(widget.phone.price),
        
        trailing:
            IconButton(icon:Icon(Icons.delete), onPressed: removeItemsFromCart),
      ),
    );
  }
}
