import 'package:flutter/material.dart';
import 'package:madalali/presentation/auth/account_page.dart';
import '../presentation/blog/blog_detail_page.dart';
import '../presentation/blog/blog_page.dart';
import '../presentation/favorite/favorite_page.dart';
import '../presentation/properties/property_detail_page.dart';
import '../presentation/auth/sign_in_page.dart';
import '../presentation/auth/sign_up_page.dart';
import '../presentation/home/home_page.dart';
import '../presentation/not_found/not_found_page.dart';
import '../presentation/properties/properties_page.dart';
import '../routers/route_constant.dart';

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpPage());
        break;

      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
        break;

      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;

      case propertiesRoute:
        return MaterialPageRoute(builder: (_) => PropertiesPage());
        break;

      case propertyDetailRoute:
        return MaterialPageRoute(builder: (_) => PropertyDetailPage());
        break;

      case blogRoute:
        return MaterialPageRoute(builder: (_) => BlogPage());
        break;

      case blogDetailRoute:
        return MaterialPageRoute(builder: (_) => BlogDetailPage());
        break;

      case favoriteRoute:
        return MaterialPageRoute(builder: (_) => FavoritePage());
        break;

      case accountRoute:
        return MaterialPageRoute(builder: (_) => AccountPage());
        break;

      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
