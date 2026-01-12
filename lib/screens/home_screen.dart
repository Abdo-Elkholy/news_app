import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';

import '../widgets/new_list_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News"),
            Text("Cloud", style: TextStyle(color: Colors.yellow)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(child: SizedBox(height: 30)),
            NewListBuilder(),
          ],
        ),
      ),
    );
  }
}
