import 'package:flutter/material.dart';

import 'package:foodapp/Features/Home/Presentaion/views/widgets/product_card.dart';
import 'package:foodapp/Features/Home/model/cardmodel.dart';

class Burgerview extends StatelessWidget {
  const Burgerview({super.key});
  final List<CardModel> burgerProduct = const [
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/1.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/2.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/3.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/4.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/5.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/6.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/7.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/8.jpg"),
    CardModel(
        titel: "burger 1",
        suptitel: "....",
        image: "assets/image/products/burger/9.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burger"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: ListView.builder(
        itemCount: burgerProduct.length,
        itemBuilder: (context, index) {
          return ProductCard(product: burgerProduct[index]);
        },
      ),
    );
  }
}
