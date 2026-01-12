import 'package:flutter/material.dart';
import 'package:news_app/widgets/new_list_builder.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(category)),
        body: CustomScrollView(slivers: [NewListBuilder(category: category)]),
      ),
    );
  }
}
