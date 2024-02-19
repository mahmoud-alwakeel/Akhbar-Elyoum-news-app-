import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_Card.dart';

class CategoriesCardListView extends StatelessWidget {
  const CategoriesCardListView({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(title: 'general', image: 'assets/general.avif'),
    CategoryModel(title: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(title: 'business', image: 'assets/business.avif'),
    CategoryModel(title: 'entertaiment', image: 'assets/entertaiment.avif'),
    CategoryModel(title: 'science', image: 'assets/science.avif'),
    CategoryModel(title: 'technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
            return  CtaegoryCard(categoryModel: categoryList[index]);
          }),
        );
  }
}