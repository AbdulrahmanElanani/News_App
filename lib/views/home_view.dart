import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
