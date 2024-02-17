import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_cards_lst_view.dart';
import 'package:news_app/widgets/news_card_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Akhbar',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Elyoum',
                  style: TextStyle(
                      color: Colors.yellow[800], fontWeight: FontWeight.w700),
                ),
              ],
            )),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategoriesCardListView()),
              SliverToBoxAdapter(child: SizedBox()),
              NewsCardListView(),
            ],
          ),
        )
        );
  }
}
