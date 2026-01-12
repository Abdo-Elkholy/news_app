import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_screen.dart';

class CategoryWidgets extends StatelessWidget {
  final CategoryModel data;
  const CategoryWidgets({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(category: data.title);
            },
          ),
        );
      },
      child: Container(
        height: 120,
        width: 180,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(data.img), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            data.title,
            style: const TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
      ),
    );
  }
}
