import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              category,
              style: const TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category.toLowerCase(),
            ),
          ],
        ),
      ),
    );
  }
}
