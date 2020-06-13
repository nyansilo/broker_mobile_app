import 'package:flutter/material.dart';

import 'package:madalali/values/branding_color.dart';
import 'dart:math' as math;

import 'category_display.dart';
import 'freq_bought_view_all.dart';
import 'near_by_propeties.dart';

import 'recent_properties.dart';
import 'search_field.dart';
import 'image_carousel_display.dart';

import 'image_slider.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(Widget header) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 50.0,
        maxHeight: 50.0,
        child: Container(
          color: Colors.transparent,
          child: header,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final restaurantsData = Provider.of<RestaurantProvider>(context);
    //final restaurants = restaurantsData.restaurants;

    return CustomScrollView(
      slivers: <Widget>[
        PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight - 10.0),
          child: SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.add_location,
                  color: Colors.white,
                  size: 25.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'where are you located? >'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            //backgroundColor: Colors.cyan,
            backgroundColor: brandingColor,
            floating: false,
            centerTitle: false,
          ),
        ),

        makeHeader(
          Container(
            decoration: BoxDecoration(
              color: brandingColor,
              //color: Colors.cyan,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            // All languages header
            height: 50.0,
            padding: EdgeInsets.only(
                bottom: 10.0, left: 10.0, right: 10.0, top: 0.0),
            child: SearchField(),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CategoryDisplay(),
              Container(
                child: FreqBoughtViewAll(),
                height: 40.0,
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
                child: ImageCarouselDisplay(),
                height: 140.0,
                //padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              ),
              Container(
                child: ImageSlider(),
                height: 110.0,
              ),
              // Container(
              //   child: NearByProperties(),
              //   height: 40.0,
              // ),
              //FoodCategory(),
            ],
          ),
        ),

        makeHeader(
          Container(
            // All languages header
            height: 30.0,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'RECENT PROPERTIES',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              RecentProperties(),
            ],
          ),
        ),

        // SliverList(
        //   // List of all restaurants
        //   delegate: new SliverChildBuilderDelegate(
        //     (context, index) => RestaurantCard(
        //       restId:  restaurants[index].restId,
        //       restName: restaurants[index].restName,
        //       catagory: restaurants[index].catagory,
        //       restPlace: restaurants[index].restPlace,
        //       restRatings: restaurants[index].restRatings,
        //       restDiscount: restaurants[index].restDiscount,
        //       restImage: restaurants[index].restImage,
        //     ),
        //     childCount: restaurants.length,
        //   ),
        // ),
      ],
    );
  }
}
