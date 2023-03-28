import 'package:flutter/material.dart';

import '../screens/categoryMeals.screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(
      {@required this.id, @required this.color, @required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tap on ${title}');
        Navigator.of(context).pushNamed(CategoryMalesScreen.routeName,
            arguments: {'id': id, 'title': title});
      },
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color,
              color.withOpacity(0.7),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
