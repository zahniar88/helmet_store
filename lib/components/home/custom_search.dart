import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      height: 53,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xffAAAAAA).withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Search Product",
                hintStyle: TextStyle(
                  color: Color(0xff8F8F8F),
                  fontSize: 13,
                ),
              ),
            ),
          ),
          SvgPicture.asset("assets/icons/search.svg"),
        ],
      ),
    );
  }
}
