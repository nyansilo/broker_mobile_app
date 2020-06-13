import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:madalali/values/assets.dart';
import 'package:madalali/values/branding_color.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    final Color bgColor = Color(0xffF3F3F3);

    var titleTextStyle = TextStyle(
      color: Colors.black87,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Blog",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(images[1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Liverpool beat Lyon in Geneva to end pre-season",
                        style: titleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Yesterday, 9:24 PM",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Football",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
                Positioned(
                  top: 190,
                  left: 20.0,
                  child: Container(
                    //color: Colors.green,
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.green,
                    ),
                    child: Text(
                      "Graphic Design",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Divider(),
        ],
      ),
    );
  }
}
