import 'package:flutter/material.dart';

class CategoryMalesScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryId = routeArs['id'];
    final categoryTitle = routeArs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('here all the recipes'),
      ),
    );
  }
}
