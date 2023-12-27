import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsnow/category/category_card_view.dart';
import 'package:newsnow/models/category_model.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryCardView(Category: category.categoryName,);

        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Container(
          height: 100,
          width: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(category.categoryImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
