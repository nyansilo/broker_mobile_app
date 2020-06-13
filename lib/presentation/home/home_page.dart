import 'package:flutter/material.dart';
import '../../values/hext_to_color.dart';
import 'collapsing_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              "Madalai4u",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontFamily: 'Quite Magica',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: hexToColor('#FFFFFF'),
        ),
        child: CollapsingList(),
      ),
    );
  }
}
