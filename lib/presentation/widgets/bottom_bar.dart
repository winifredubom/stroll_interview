import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  // List of items with assets, icons, and badges
  final List<_NavBarItem> _items = [
    _NavBarItem(
      badgeCount: 0,
      assetPath: 'asset/Card.jpg', // Use asset path if you want to replace icon
    ),
    _NavBarItem(
      badgeCount: 3,
      assetPath: null,
    ),
    _NavBarItem(
      badgeCount: 0,
      assetPath: null,
    ),
    _NavBarItem(
      badgeCount: 1,
      assetPath: 'asset/User.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Selected: '),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _items.map((item) {
          return BottomNavigationBarItem(
            
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                if (item.assetPath != null)
                  Image.asset(
                    item.assetPath!,
                    height: 24,
                    width: 24,
                  )
                else
                if (item.badgeCount > 0)
                  Positioned(
                    right: -6,
                    top: -6,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        item.badgeCount.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _NavBarItem {
  final int badgeCount;
  final String? assetPath;

  _NavBarItem({
    this.badgeCount = 0,
    this.assetPath,
  });
}