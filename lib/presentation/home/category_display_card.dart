import 'package:flutter/material.dart';

class CategoryDisplayCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;

  const CategoryDisplayCard(
      {Key key,
      @required this.icon,
      @required this.title,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: backgroundColor,
          maxRadius: 30.0,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(title)
      ],
    );
  }
}
