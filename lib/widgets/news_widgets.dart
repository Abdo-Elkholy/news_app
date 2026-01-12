import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsWidgets extends StatelessWidget {
  final ArticleModel article;
  const NewsWidgets({super.key, required this.article});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(article.img!),
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
