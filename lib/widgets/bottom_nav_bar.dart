import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomNavItem(
            icon: 'assets/icons/calendar.svg',
            text: 'Today',
            press: () {},
          ),
          BottomNavItem(
            icon: 'assets/icons/gym.svg',
            text: 'All Excercies',
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            icon: 'assets/icons/Settings.svg',
            text: 'Settings',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String icon;
  final String text;
  final Function press;
  final bool isActive;
  BottomNavItem({this.icon, this.text, this.press, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(icon,
              color: isActive ? kActiveIconColor : kTextColor),
          Text(
            text,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}
