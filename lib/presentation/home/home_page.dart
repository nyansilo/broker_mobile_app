import 'package:flutter/material.dart';
import '../../presentation/auth/account_page.dart';
import '../../presentation/blog/blog_page.dart';
import '../../presentation/favorite/favorite_page.dart';
import '../../presentation/properties/properties_page.dart';
import '../../values/branding_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  final List<Widget> _screens = [
    PropertiesPage(),
    BlogPage(),
    FavoritePage(),
    AccountPage()
  ];

  void _onItemTapped(int itemIndex) {
    _pageController.jumpToPage(itemIndex);
  }

  int _selectedIndex = 0;
  void _onPageChanged(int pageIndex) {
    setState(() {
      _selectedIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            title: Text(
              "Properties",
              style: TextStyle(
                color: _selectedIndex == 0 ? brandingColor : Colors.grey,
              ),
            ),
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? brandingColor : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Blog",
              style: TextStyle(
                color: _selectedIndex == 1 ? brandingColor : Colors.grey,
              ),
            ),
            icon: Icon(
              Icons.folder,
              color: _selectedIndex == 1 ? brandingColor : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Favorite",
              style: TextStyle(
                color: _selectedIndex == 2 ? brandingColor : Colors.grey,
              ),
            ),
            icon: Icon(
              Icons.favorite,
              color: _selectedIndex == 2 ? brandingColor : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Account",
              style: TextStyle(
                color: _selectedIndex == 3 ? brandingColor : Colors.grey,
              ),
            ),
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 3 ? brandingColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
