import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/navigation.model.dart';

class HeaderNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: navigationList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, item) {
          return GestureDetector(
            onTap: () {
              print("Clicked");
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF404040),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    navigationList[item].unselectedImg,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    navigationList[item].name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, item) {
          return SizedBox(
            width: 20.0,
          );
        },
      ),
    );
  }
}
