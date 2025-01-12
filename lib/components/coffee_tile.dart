import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final void Function()? onPressed;
  final Coffee coffee;
  final Widget icon;
  const CoffeeTile({
    super.key,
    required this.coffee,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            coffee.name,
            style: TextStyle(
              color: black,
            ),
          ),
          subtitle: Text(
            coffee.price,
            style: TextStyle(
              color: black,
            ),
          ),
          leading: Image.asset(coffee.imagePath),
          trailing: IconButton(
            onPressed: onPressed,
            icon: icon,
          ),
        ),
      ),
    );
  }
}
