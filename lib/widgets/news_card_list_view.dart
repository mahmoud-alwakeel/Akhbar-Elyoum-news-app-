import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsCardListView extends StatelessWidget {
  const NewsCardListView({super.key, required this.articlesList});

  final List<ArticleModel> articlesList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articlesList.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: NewsCard(articleModel: articlesList[index]),
      );
    }));
  }
}
