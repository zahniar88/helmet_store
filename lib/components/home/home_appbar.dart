import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffF4F4F4),
      elevation: 0,
      centerTitle: false,
      title: Text(
        "HELMETSTORE",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xff5E5E5E),
        ),
      ),
      toolbarHeight: 70,
      actions: [
        MaterialButton(
          onPressed: () {},
          height: 29,
          minWidth: 29,
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/icons/bell.svg",
                color: Color(0xff5B5B5B),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xffF24B4B),
                  ),
                  child: Text(
                    "2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
