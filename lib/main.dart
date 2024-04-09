/*
Author(s): KLM Tan (Week 6 Handout) and Jan Neal Isaac D. Villamin
Lab section: CMSC 23 - UV1L
Date created: 2024-04-09
Description: 
  It defines the main application.
  This is where the routes are defined.
  The default screen is the My Catalog screen.
*/

import 'package:flutter/material.dart';
import 'screen/checkout.dart';
import 'screen/my_cart.dart';
import 'screen/my_catalog.dart';
import 'package:provider/provider.dart';
import 'provider/shopping_cart_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ShoppingCart()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/cart": (context) => const MyCart(),
        "/products": (context) => const MyCatalog(),
        "/checkout": (context) => const Checkout(),
      },
      home: const MyCatalog(),
    );
  }
}
