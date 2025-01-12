import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[600],
        activeColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(
          color: Colors.white,
          width: 2,
        ),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(icon: Icons.shopping_bag, text: 'Cart'),
          GButton(
            icon: Icons.person,
            text: 'Settings',
          ),
        ],
      ),
    );
  }
}
