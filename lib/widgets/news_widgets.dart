import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../gen/assets.gen.dart';

class NewsWidgets extends StatelessWidget {
  final ArticleModel article;
  const NewsWidgets({super.key, required this.article});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: article.img == null,
          replacement: Image.network(article.img!),
          child: Image.asset(Assets.noImg.path),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              textDirection: TextDirection.rtl,
              article.title,
              style: const TextStyle(fontSize: 25),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              textDirection: TextDirection.rtl,
              article.article,
              style: const TextStyle(color: Colors.grey),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
