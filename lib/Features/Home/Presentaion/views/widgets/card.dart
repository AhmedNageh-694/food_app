import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/model/cardmodel.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  final List<CardModel> cardmodel = const [
    CardModel(
        titel: "Chicken Pop",
        suptitel: "Best Chicken burger for you",
        image: "assets/image/logo/chickenpop.jpeg",
        price: "\$39"),
    CardModel(
        titel: "Whiskey Pizza",
        suptitel: "Best Pizza for you",
        image: "assets/image/logo/pizza_card.jpeg",
        price: "\$59"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: cardmodel.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          final card = cardmodel[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.asset(
                      card.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        card.titel,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        card.suptitel,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card.price!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
