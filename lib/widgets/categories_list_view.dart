import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    
    CategoryModel(
      categoryName: "Business",
      image: "assets/business.avif",
    ),
    CategoryModel(
      categoryName: "Sports",
      image: "assets/sports.avif",
    ),
    CategoryModel(
      categoryName: "Health",
      image: "assets/health.avif",
    ),
    CategoryModel(
      categoryName: "Science",
      image: "assets/science.avif",
    ),
    CategoryModel(
      categoryName: "Technology",
      image: "assets/technology.jpeg",
    ),
    CategoryModel(
      categoryName: "Entertaiment",
      image: "assets/entertaiment.avif",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
