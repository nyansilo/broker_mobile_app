import 'package:flutter/material.dart';
import 'package:madalali/values/branding_color.dart';

class PropertyDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        top: true,
        left: true,
        right: true,
        child: Column(
          children: <Widget>[
            BackAndShareBottons(),
            SizedBox(height: 8),
            TitleAndAddress(),
            ImageDisplay(),
            //AmenitiesList(),

            Amenities(),
            SizedBox(height: 8),
            PriceAndType(),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 12),
            DescriptionSection(),
            Divider(),
            LocationMap(),
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/user.jpg",
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Daniel George",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        "Owner",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 72,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin:
                      EdgeInsets.only(left: 10, right: 0, top: 12, bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: brandingColor,
                  ),
                  child: Center(
                    child: Text(
                      "Send Inqury",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class Amenities extends StatelessWidget {
  const Amenities({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
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
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.w500),
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
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.w500),
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
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LocationMap extends StatelessWidget {
  const LocationMap({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Text(
              "Location",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.chevychaseface.com/wp-content/uploads/2015/11/map-placeholder.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Center(
              //   child: Text("Map Area"),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Description",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "llo sequi fugiat exercitationem. Fugit exercitationem deleniti assumenda dolor."
            "Praesentium ut voluptatum quos dolores voluptatibus. Laudantium sed consequatur "
            "quibusdam sapiente adipisci odio provident. Libero minus debitis voluptatem ullam."
            "Temporibus cumque voluptatibus nisi optio voluptate nihil voluptates."
            " Est sed rerum aspernatur repudiandae necessitatibus sit. Ducimus veritatis est quam.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

class PriceAndType extends StatelessWidget {
  const PriceAndType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Tsh 10,000,000",
                  style: TextStyle(
                      fontSize: 22,
                      color: brandingColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          FlatButton(
            child: Text(
              "For Rent",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            onPressed: () {},
            color: Colors.green[200],
          )
        ],
      ),
    );
  }
}

class AmenitiesList extends StatelessWidget {
  const AmenitiesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 13.5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: brandingColor,
                ),
                Text(
                  "3 Guests",
                  style: TextStyle(
                    color: brandingColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.beach_access,
                  color: brandingColor,
                ),
                Text(
                  "2 bed",
                  style: TextStyle(
                    color: brandingColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: brandingColor,
                ),
                Text(
                  "1 Bathroom",
                  style: TextStyle(
                    color: brandingColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: brandingColor,
                ),
                Text(
                  "3 Guests",
                  style: TextStyle(
                    color: brandingColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/11/18/17/46/architecture-1836070_1280.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdnimages.familyhomeplans.com/plans/59936/59936-b600.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/06/13/22/42/kitchen-2400367_1280.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleAndAddress extends StatelessWidget {
  const TitleAndAddress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: MediaQuery.of(context).size.height / 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Soak up the Rustic Grand at a Deluxe Historic",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 8),
          Row(children: <Widget>[
            Icon(
              Icons.add_location,
              size: 19,
              color: brandingColor,
            ),
            Text(
              "Forest Park, Illinois, USA",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ]),
        ],
      ),
    );
  }
}

class BackAndShareBottons extends StatelessWidget {
  const BackAndShareBottons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 15, top: 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text("Detail"),
            Icon(Icons.share),
          ]),
    );
  }
}
