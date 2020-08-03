import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Searchbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
            icon: SvgPicture.asset("assets/icons/search.svg")),
      ),
    );
  }
}
