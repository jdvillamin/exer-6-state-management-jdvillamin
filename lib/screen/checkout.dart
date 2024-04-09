import 'package:flutter/material.dart';
import '../model/item.dart';
import "package:provider/provider.dart";
import "../provider/shopping_cart_provider.dart";

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: context.watch<ShoppingCart>().cart.isEmpty
          ? const Flexible(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                  Text("Item Details"),
                  Text("No items to checkout!")
                ])))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: Text("Item Details")),
                getItems(context),
                const Divider(height: 4, color: Colors.grey),
                computeCost(),
                Flexible(
                    child: Center(
                        child: Column(children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<ShoppingCart>().removeAll();
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Payment Successful!"),
                          duration: Duration(seconds: 1, milliseconds: 100),
                        ));
                      },
                      child: const Text("Pay Now!")),
                ]))),
              ],
            ),
    );
  }

  Widget getItems(BuildContext context) {
    List<Item> products = context.watch<ShoppingCart>().cart;
    return Expanded(
        child: Column(
      children: [
        Flexible(
            child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(products[index].name),
                trailing: Text(
                  "${products[index].price}",
                  style: const TextStyle(fontSize: 14),
                ));
          },
        )),
      ],
    ));
  }

  Widget computeCost() {
    return Consumer<ShoppingCart>(builder: (context, cart, child) {
      return Text("Total Cost to Pay: ${cart.cartTotal}");
    });
  }
}
