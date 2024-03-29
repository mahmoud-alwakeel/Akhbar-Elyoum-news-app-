import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_Service.dart';
import 'package:news_app/widgets/news_card_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    ///This method doesn't need to be written 
    ///with async and await in this context because you're not awaiting 
    ///it directly in the initState. Instead, you're passing the future 
    ///to the FutureBuilder, which handles waiting for the future to complete.


    future = NewsService().getTopHeadlinesNews(category: widget.category); 
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return NewsCardListView(
              articlesList: snapShot.data!,
            );
          } else if (snapShot.hasError) {
            return const Center(
              child: Text("Ops there was an error"),
            ); 
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
    
  }
}
