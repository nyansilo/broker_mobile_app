import 'package:flutter/material.dart';

import 'image_carousel_card.dart';
import '../../application/models/properties/carousel_category_model.dart';

// Model

class ImageCarouselDisplay extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 0, bottom: 10, right: 10, left: 10),
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 0, bottom: 0, right: 10, left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return ImageCarouselCard(
              title: _categories[index].title,
              imagePath: _categories[index].imagePath,
            );
          },
        ),
      ),
    );
  }
}
