import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/navigation.model.dart';

class HeaderNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.red,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: navigationList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, item) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  navigationList[item].name,
                ),
              ],
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
