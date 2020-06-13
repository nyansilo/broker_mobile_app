import 'package:flutter/material.dart';
import 'package:madalali/values/branding_color.dart';

class FreqBoughtViewAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popular Properties".toUpperCase(),
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "More >>",
              style: TextStyle(
                color: brandingColor,
                fontWeight: FontWeight.w300,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
