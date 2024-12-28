import 'package:flutter/material.dart';

import 'package:foodapp/Features/Home/Presentaion/views/views/breadview.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/burgerview.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/dirnkview.dart';
import 'package:foodapp/Features/Home/Presentaion/views/views/pizzaview.dart';
import 'package:foodapp/Features/Home/Presentaion/views/widgets/categoryicon.dart';
import 'package:foodapp/Features/Home/model/categoryiconmodel.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });
  final List<CategoryIconModel> category = const [
    CategoryIconModel(
      icon: "assets/image/logo/breadicon.png",
    ),
    CategoryIconModel(icon: "assets/image/logo/burger.png"),
    CategoryIconModel(icon: "assets/image/logo/pizza.png"),
    CategoryIconModel(icon: "assets/image/logo/drink.png"),
  ];

  final List<Widget> categoryViews = const [
    Breadview(),
    Burgerview(),
    Pizzaview(),
    Dirnkview(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => categoryViews[index]));
              },
              child: CategoryIcon(categoryIconModel: category[index]));
        },
      ),
    );
  }
}
