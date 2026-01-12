import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../gen/assets.gen.dart';

class NewListBuilder extends StatefulWidget {
  final String category;
  const NewListBuilder({super.key, this.category = "general"});

  @override
  State<NewListBuilder> createState() => _NewListBuilderState();
}

class _NewListBuilderState extends State<NewListBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articlesList: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Column(
              children: [Image.asset(Assets.error.path), Text("ERROR")],
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
