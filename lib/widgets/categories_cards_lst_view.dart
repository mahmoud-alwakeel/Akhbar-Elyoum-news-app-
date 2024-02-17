import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_Card.dart';

class CategoriesCardListView extends StatelessWidget {
  const CategoriesCardListView({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(title: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(title: 'Sports', image: 'assets/business.avif'),
    CategoryModel(title: 'Sports', image: 'assets/entertaiment.avif'),
    CategoryModel(title: 'Sports', image: 'assets/general.avif'),
    CategoryModel(title: 'Sports', image: 'assets/science.avif'),
    CategoryModel(title: 'Sports', image: 'assets/technology.jpeg'),
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