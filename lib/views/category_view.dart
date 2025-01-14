import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(category,style: TextStyle(color: Colors.black),),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}