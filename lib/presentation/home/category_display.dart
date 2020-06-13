import 'package:flutter/material.dart';

import 'category_display_card.dart';

// Data

// Model
import '../../application/models/properties/property_categories.dart';

class CategoryDisplay extends StatelessWidget {
  final List<Category> _categories = propertyCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: GridView.builder(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10.0,
        ),
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => print(_categories[index]),
            child: CategoryDisplayCard(
              backgroundColor: _categories[index].backgroundColor,
              icon: _categories[index].icon,
              title: _categories[index].title,
            ),
          );
        },
      ),
    );
  }
}
