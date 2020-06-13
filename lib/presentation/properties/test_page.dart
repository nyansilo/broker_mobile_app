import 'package:flutter/material.dart';

import 'property_detail_page.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(title: Text('Properties')),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                CircleAvatar(
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/user.jpg",
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300])),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  suffixIcon: Icon(
                    Icons.filter_list,
                    color: Colors.lightGreen,
                  ),
                  hintText: "Karachi, Pakistan",
                  focusColor: Colors.green),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
            color: Colors.grey[100],
            child: Text(
              "100 Results Found",
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, i) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  height: 151,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                          "https://cdn.pixabay.com/photo/2017/06/13/22/42/kitchen-2400367_960_720.jpg"),
                                    ),
                                  ),
                                  SizedBox(width: 11.0),
                                  Flexible(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5.0),
                                          decoration:
                                              BoxDecoration(color: Colors.blue),
                                          child: Text(
                                            "For Rent",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.0,
                                        ),
                                        Text("\$1,031 / mo",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17)),
                                        SizedBox(
                                          height: 3.0,
                                        ),
                                        Text("131 Maub St, Chicago, IL",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 32, right: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.people,
                                        size: 12,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "5 people",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.local_offer,
                                        size: 12,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "2 Beds",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.airline_seat_legroom_reduced,
                                        size: 12,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "2 Bathrooms",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
