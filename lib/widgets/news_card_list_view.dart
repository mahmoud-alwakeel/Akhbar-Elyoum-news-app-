import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsCardListView extends StatelessWidget {
  const NewsCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: NewsCard(),
        );
    }));
    // ListView.builder(
    //       itemCount: 10,
    //       itemBuilder: (context, index) {
    //         return  Padding(
    //           padding: const EdgeInsets.only(top: 20.0),
    //           child: NewsCard(),
    //         );
    //       },
    //      );
  }
}