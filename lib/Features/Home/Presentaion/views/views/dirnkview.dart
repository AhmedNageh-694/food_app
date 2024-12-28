import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/Presentaion/views/widgets/product_card.dart';
import 'package:foodapp/Features/Home/model/cardmodel.dart';

class Dirnkview extends StatelessWidget {
  const Dirnkview({super.key});
  final List<CardModel> drinkProduct = const [
    CardModel(
        titel: "Orange ",
        suptitel: "\$5",
        image: "assets/image/products/drink/1.jpg"),
    CardModel(
        titel: "Beat the Winter\nBlues Berry Smoothie",
        suptitel: "\$6",
        image: "assets/image/products/drink/2.jpg"),
    CardModel(
        titel: "Frozen Orange Prosecco",
        suptitel: "\$4",
        image: "assets/image/products/drink/3.jpg"),
    CardModel(
        titel: "Kiwi Pineapple\nSpinach Smoothie",
        suptitel: "\$7",
        image: "assets/image/products/drink/4.jpg"),
    CardModel(
        titel: "Mango-Berry Smoothie",
        suptitel: "\$6",
        image: "assets/image/products/drink/5.jpg"),
    CardModel(
        titel: "Pineapple Smoothie",
        suptitel: "\$7",
        image: "assets/image/products/drink/6.jpg"),
    CardModel(
        titel: "Summer Mango Stone\nFruit Smoothie",
        suptitel: "\$8",
        image: "assets/image/products/drink/7.jpg"),
    CardModel(
        titel: "Vegan Mango Lassi\nThe Green Creator",
        suptitel: "\$6",
        image: "assets/image/products/drink/8.jpg"),
    CardModel(
        titel: "Watermelon Slushie",
        suptitel: "\$6",
        image: "assets/image/products/drink/9.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drink"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: ListView.builder(
        itemCount: drinkProduct.length,
        itemBuilder: (context, index) {
          return ProductCard(product: drinkProduct[index]);
        },
      ),
    );
  }
}
