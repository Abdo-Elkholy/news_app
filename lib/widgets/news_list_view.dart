import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_widgets.dart';

import '../models/article_model.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articlesList;
  @override
  NewsListView({super.key, required this.articlesList});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (itemBuilder, i) {
        return NewsWidgets(article: articlesList[i]);
      },
      separatorBuilder: (separatorBuilder, i) {
        return const SizedBox(height: 15);
      },
      itemCount: articlesList.length,
    );
  }
}
