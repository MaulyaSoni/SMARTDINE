import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Menu")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          foodItem("Pizza", "₹199"),
          foodItem("Burger", "₹149"),
          foodItem("Pasta", "₹179"),
          foodItem("Cold Drink", "₹99"),
        ],
      ),
    );
  }

  Widget foodItem(String name, String price) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(price),
        trailing: IconButton(
          icon: const Icon(Icons.add_shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
