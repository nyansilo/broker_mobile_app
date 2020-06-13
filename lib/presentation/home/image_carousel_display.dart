import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ImageSlider extends StatelessWidget {
  final List<String> images = [
    'assets/img/1.jpg',
    'assets/img/3.jpg',
    'assets/img/2.jpg',
    'assets/img/4.jpg',
    'assets/img/fb.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: new Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: 4,
        pagination: new SwiperPagination(),
      ),
    );
  }
}
