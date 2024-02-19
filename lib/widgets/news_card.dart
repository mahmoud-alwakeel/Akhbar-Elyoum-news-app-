import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(articleModel.image ?? 'https://www.upf.edu/documents/2425466/0/Marketplace_Lending_News_9904ab0ad8.jpg/89e79cf5-1479-ac00-2a2d-d599ae18b1d1?t=1694182310711',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          ),
          const SizedBox(height: 12,),
          Text(articleModel.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          const SizedBox(height: 12,),
          Text(articleModel.subTitle ?? '',  maxLines: 3, overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}