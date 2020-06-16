import 'package:flutter/material.dart';
import '../../presentation/properties/property_detail_page.dart';
import '../../values/branding_color.dart';
import 'package:page_transition/page_transition.dart';

class RecentProperties extends StatefulWidget {
  @override
  _RecentPropertiesState createState() => _RecentPropertiesState();
}

class _RecentPropertiesState extends State<RecentProperties> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.grey[100],
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: index % 2 == 0
                                    ? Colors.grey[400]
                                    : Colors.redAccent,
                              ),
                              onPressed: () {},
                            ),
                            Container(
                                width: 90,
                                height: 90,
                                child: GestureDetector(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      "assets/images/${index + 1}.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) =>
                                    //         PropertyDetailPage(),
                                    //   ),
                                    // );
                                    Navigator.of(context).push(
                                      PageTransition(
                                          child: PropertyDetailPage(),
                                          type: PageTransitionType.fade),
                                    );
                                  },
                                )),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Apartment Inapangwishwa",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "131 Maub St, Chicago, IL",
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "\$1,031 / mo",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: brandingColor,
                                        ),
                                        child: Text(
                                          "For Rent",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 32, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    style: TextStyle(color: Colors.grey[600]),
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
                                    style: TextStyle(color: Colors.grey[600]),
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
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 5),
            ),
          )
        ],
      ),
    );
  }
}
