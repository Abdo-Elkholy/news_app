import 'package:flutter/cupertino.dart';
import 'package:news_app/gen/assets.gen.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_widgets.dart';

class CategoryListView extends StatelessWidget {
  List<CategoryModel> data = [
    CategoryModel(img: Assets.business, title: "business"),
    CategoryModel(img: Assets.health, title: "health"),
    CategoryModel(img: Assets.entertaiment, title: "entertaiment"),
    CategoryModel(img: Assets.general, title: "general"),
    CategoryModel(img: Assets.science, title: "science"),
    CategoryModel(img: Assets.sports, title: "sports"),
    CategoryModel(img: Assets.technology.path, title: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return CategoryWidgets(data: data[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
        itemCount: 7,
      ),
    );
  }
}
