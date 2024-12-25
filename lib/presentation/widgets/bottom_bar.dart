import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomBottomNavigationBar extends StatefulWidget {
final int chatBadgeCount;
final int trendingBadgeCount;

const CustomBottomNavigationBar({
  super.key, 
  this.chatBadgeCount = 0,
  this.trendingBadgeCount = 0,
});

@override
_CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
int _currentIndex = 0;

Widget _buildIcon({
  IconData? icon,
  String? assetPath,
  required double size,
  required Color color,
  int? badgeCount,
  bool showEmptyBadge = false,
}) {
  assert(icon != null || assetPath != null, 'Either icon or assetPath must be provided');
  
  Widget iconWidget;
  if (icon != null) {
    iconWidget = Icon(
      icon,
      size: size,
      color: color,
    );
  } else {
    iconWidget = Image.asset(
      assetPath!,
      width: size,
      height: size,
      color: color,
    );
  }

  if (badgeCount == null && !showEmptyBadge) {
    return iconWidget;
  }

  return Stack(
    clipBehavior: Clip.none,
    children: [
      iconWidget,
      Positioned(
        right: -8,
        top: -8,
        child: Container(
          height: 6,
          padding: const EdgeInsets.all(4),
          decoration:const BoxDecoration(
            color: Color(0xffB5B2FF),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(6))
          ),
          constraints:const BoxConstraints(
            minWidth: 16,
            minHeight: 16,
          ),
          child: badgeCount != null ? Text(
            badgeCount > 99 ? '99+' : badgeCount.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ) : const  SizedBox(
            width: 8,
            height: 8,
          ),
        ),
      ),
    ],
  );
}

@override
Widget build(BuildContext context) {
  return BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (index) {
      setState(() {
        _currentIndex = index;
      });
    },
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.black,
    selectedItemColor: Colors.grey,
    unselectedItemColor: Colors.grey,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      BottomNavigationBarItem(
        icon: _buildIcon(
          icon: MdiIcons.cardsOutline,
          size: 27,
          color: _currentIndex == 0 ? Colors.grey : Colors.grey,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: _buildIcon(
          assetPath: 'asset/trending-topic.png', 
          size: 24,
          color: _currentIndex == 1 ? Colors.blue : Colors.grey,
          showEmptyBadge: true,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: _buildIcon(
          assetPath: 'asset/chat.png', 
          size: 24,
          color: _currentIndex == 2 ? Colors.blue : Colors.grey,
          badgeCount: 10,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: _buildIcon(
          icon: MdiIcons.accountOutline, 
          size: 24,
          color: _currentIndex == 3 ? Colors.blue : Colors.grey,
        ),
        label: '',
      ),
    ],
  );
}
}