import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import '../category/category_card.dart';

class cardListView extends StatelessWidget {
  const cardListView({
    super.key,
  });
  final List<CategoryModel> categories = const[
    CategoryModel(
        categoryName: 'general', categoryImage: 'assets/general.jpeg'),
    CategoryModel(
        categoryName: 'technology', categoryImage: 'assets/technology.jpg'),
    CategoryModel(
        categoryName: 'health', categoryImage: 'assets/health.jpg'),
    CategoryModel(
        categoryName: 'sports', categoryImage: 'assets/sports.jpg'),
    CategoryModel(
        categoryName: 'business', categoryImage: 'assets/business.jpg'),
    CategoryModel(
        categoryName: 'science', categoryImage: 'assets/science.jpg'),
    CategoryModel(
        categoryName: 'entertainment', categoryImage: 'assets/entertainment.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ( context,  index) {
            return  categoryCard(category: categories[index]);
          }),
    );
  }
}
