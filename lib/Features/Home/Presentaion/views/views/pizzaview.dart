import 'package:flutter/material.dart';

import 'package:foodapp/Features/Home/Presentaion/views/widgets/product_card.dart';
import 'package:foodapp/Features/Home/model/cardmodel.dart';

class Pizzaview extends StatelessWidget {
  const Pizzaview({super.key});
  final List<CardModel> pizzaProduct = const [
    CardModel(
        titel: "YEAST Pizza Dough",
        suptitel: "\$25",
        image: "assets/image/products/pizza/1.jpg"),
    CardModel(
        titel: "Cabana",
        suptitel: "\$20",
        image: "assets/image/products/pizza/2.jpg"),
    CardModel(
        titel: "Cast Iron Pizza",
        suptitel: "\$30",
        image: "assets/image/products/pizza/3.jpg"),
    CardModel(
        titel: "Cheesy BBQ Chicken Pizza",
        suptitel: "\$22",
        image: "assets/image/products/pizza/4.jpg"),
    CardModel(
        titel: "Massa de pizza rápida e fácil",
        suptitel: "\$30",
        image: "assets/image/products/pizza/5.jpg"),
    CardModel(
        titel: "Neapolitan Pizza Dough",
        suptitel: "\$22",
        image: "assets/image/products/pizza/6.jpg"),
    CardModel(
        titel: "Pepperoni and Burrata Pizza\nwith Pesto",
        suptitel: "\$25",
        image: "assets/image/products/pizza/7.jpg"),
    CardModel(
        titel: "Selbstgemachte Pizza\nmit Pesto Rosso",
        suptitel: "\$27",
        image: "assets/image/products/pizza/8.jpg"),
    CardModel(
        titel: "Chorizo Pizza",
        suptitel: "\$17",
        image: "assets/image/products/pizza/9.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: ListView.builder(
        itemCount: pizzaProduct.length,
        itemBuilder: (context, index) {
          return ProductCard(product: pizzaProduct[index]);
        },
      ),
    );
  }
}
