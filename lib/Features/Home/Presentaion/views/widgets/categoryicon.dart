import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/model/categoryiconmodel.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key, required this.categoryIconModel});

  final CategoryIconModel categoryIconModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.grey[200],
        child: ClipOval(
          child: Image.asset(
            categoryIconModel.icon,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, color: Colors.red);
            },
          ),
        ),
      ),
    );
  }
}
