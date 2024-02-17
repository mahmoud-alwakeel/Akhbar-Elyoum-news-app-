import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CtaegoryCard extends StatelessWidget {
  const CtaegoryCard({super.key, required this.categoryModel});
  
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      width: 200,
      height: 130,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(categoryModel.image)),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12)),
      child: Text(
        categoryModel.title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 28,
        ),
      ),
    );
  }
}
