import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleBar extends StatelessWidget {
  void Function(int)? onTabChange;
  GoogleBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey.shade400,
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius:30,
        gap:8 ,
        onTabChange:(value) => onTabChange!(value),
        tabs: const [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.shopping_cart,
          text: "Cart",
        ),
      ]),
    );
  }
}
