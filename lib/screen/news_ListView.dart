import 'package:flutter/cupertino.dart';
import '../models/article_model.dart';
import '../category/category_news.dart';

class newsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const newsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: categoryNews(articleModel: articles[index]),
      );
    }));
  }
}
