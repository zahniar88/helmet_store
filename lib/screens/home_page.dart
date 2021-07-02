import 'package:flutter/material.dart';
import 'package:helmet_store/components/home/card_category.dart';
import 'package:helmet_store/components/home/card_content.dart';
import 'package:helmet_store/components/home/custom_search.dart';
import 'package:helmet_store/components/home/home_appbar.dart';
import 'package:helmet_store/components/home/section_title.dart';
import 'package:helmet_store/models/category.dart';
import 'package:helmet_store/models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentNavbar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomSearch(),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 18, bottom: 8),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff565656),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories
                    .map((category) => CardCategory(category: category))
                    .toList(),
              ),
            ),
            SizedBox(height: 31),
            SectionTitleWithViewAll(
              title: "New Releases",
              onTap: () {},
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  mainAxisExtent: 245,
                  // childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return CardContent(index: index);
                },
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xff000000).withOpacity(0.38),
        selectedItemColor: Color(0xff000000),
        currentIndex: currentNavbar,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentNavbar = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
