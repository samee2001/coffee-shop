import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFBCAAA4), // Light coffee color
                Color(0xFF795548), // Medium coffee color
                Color(0xFF4E342E), // Dark coffee color
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "images/animation.png",
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Sameera Coffee Shop",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  ),
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
