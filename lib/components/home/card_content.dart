import 'package:flutter/material.dart';
import 'package:helmet_store/models/product.dart';


class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 166,
            margin: EdgeInsets.only(bottom: 8),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(products[index].image),
          ),
          Text(
            "US \$${products[index].price}",
            style: TextStyle(
              color: Color(0xff404040),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 2),
          Text(
            products[index].title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xff616161).withOpacity(0.82),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
