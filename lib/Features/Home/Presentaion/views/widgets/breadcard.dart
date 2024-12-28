import 'package:flutter/material.dart';

class Breadcard extends StatelessWidget {
  const Breadcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Row(
          children: [
            const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Yummy Bread",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Best price rolis for you ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$29",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Image.asset('assets/image/logo/bread.jpeg',
                fit: BoxFit.cover, height: 150, width: 150),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
