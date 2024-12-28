import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/model/cardmodel.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final CardModel product;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                product.image,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  product.titel,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(product.suptitel),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            IconButton(
                onPressed: () {
                  
                }, icon: const Icon(Icons.add_circle_outline))
          ],
        ),
      ),
    );
  }
}
