import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/Presentaion/views/widgets/product_card.dart';
import 'package:foodapp/Features/Home/model/cardmodel.dart';

class Breadview extends StatelessWidget {
  const Breadview({super.key});
  final List<CardModel> breadProducts = const [
    CardModel(
      titel: "Whole Wheat Bread",
      suptitel: "\$10",
      image: "assets/image/products/bread/1.jpg",
    ),
    CardModel(
      titel: "Homemade Bread",
      suptitel: "\$8",
      image: "assets/image/products/bread/2.jpg",
    ),
    CardModel(
      titel: "French Bread",
      suptitel: "\$9",
      image: "assets/image/products/bread/3.jpg",
    ),
    CardModel(
      titel: "Hearty Multigrain Bread",
      suptitel: "\$11",
      image: "assets/image/products/bread/4.jpg",
    ),
    CardModel(
      titel: " Cinnamon Swirl Bread",
      suptitel: "\$13",
      image: "assets/image/products/bread/5.jpg",
    ),
    CardModel(
      titel: "Italian Panini Bread",
      suptitel: "\$8",
      image: "assets/image/products/bread/6.jpg",
    ),
    CardModel(
      titel: "Sandwich Bread",
      suptitel: "\$6",
      image: "assets/image/products/bread/7.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Bread"),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        body:ListView.builder(itemCount: breadProducts.length,itemBuilder: (context, index) {
          return ProductCard(product: breadProducts[index]);
        },));
  }
}
