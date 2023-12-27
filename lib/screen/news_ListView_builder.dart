import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_services.dart';
import 'news_ListView.dart';

class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({
    super.key, required this.category,

  });
  final String category;

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = newsServices().getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return newsListView(articles: Snapshot.data!);
          } else if (Snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('error try again later')),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}