import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_Card.dart';

class CategoriesCardListView extends StatelessWidget {
  const CategoriesCardListView({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(title: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(title: 'Business', image: 'assets/business.avif'),
    CategoryModel(title: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(title: 'science', image: 'assets/science.avif'),
    CategoryModel(title: 'technology', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'general', image: 'assets/general.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
            return  CategoryCard(categoryModel: categoryList[index]);
          }),
        );
  }
}