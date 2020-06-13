import 'package:flutter/material.dart';

class NearByProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Near by Properties".toUpperCase(),
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
