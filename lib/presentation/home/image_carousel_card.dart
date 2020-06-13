import 'package:flutter/material.dart';

class ImageCarouselCard extends StatelessWidget {
  final String title;
  final String imagePath;

  ImageCarouselCard({this.title, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(
        // builder: (_) => RecipeSinglePage()
        //));
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Material(
          elevation: 6.0,
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),

            //margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 120,
                  height: 80,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    title.toUpperCase(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
