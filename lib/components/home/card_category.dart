import 'package:flutter/material.dart';
import 'package:helmet_store/models/category.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 159,
      margin: EdgeInsets.only(left: 18),
      child: Stack(
        children: <Widget>[
          Image.asset(category.image),
          Align(
            alignment: Alignment.center,
            child: Text(
              category.title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
