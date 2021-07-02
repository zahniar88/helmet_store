import 'package:flutter/material.dart';

class SectionTitleWithViewAll extends StatelessWidget {
  const SectionTitleWithViewAll({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff565656),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: <Widget>[
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff565656),
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
