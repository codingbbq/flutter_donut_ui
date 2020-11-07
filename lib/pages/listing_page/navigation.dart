import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/navigation.model.dart';
import 'package:flutter_donut_ui/provider/navigation.provider.dart';
import 'package:provider/provider.dart';

class HeaderNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currNavSelected = context.select<NavProvider, int>(
      (nav) => nav.selctedNav[0],
    );

    void updateNavList(item) {
      var nav = context.read<NavProvider>();
      nav.updateNavList(item);
    }

    return Container(
      height: 110,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: navigationList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, item) {
          return GestureDetector(
            onTap: () {
              updateNavList(item);
            },
            child: Container(
              decoration: currNavSelected == item
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF404040),
                          width: 2.0,
                        ),
                      ),
                    )
                  : BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    currNavSelected == item
                        ? navigationList[item].selectedImg
                        : navigationList[item].unselectedImg,
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
                      color:
                          currNavSelected == item ? Colors.black : Colors.grey,
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
