import 'package:coffee_shop/components/theme_provider.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:coffee_shop/pages/get_started.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      child: MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeProvider.themeMode,
        title: "Coffee Shop App",
        debugShowCheckedModeBanner: false,
        home: GetStarted(),
      ),
    );
  }
}
