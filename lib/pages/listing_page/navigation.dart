import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/navigation.model.dart';

class HeaderNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: navigationList.length,
          itemBuilder: (BuildContext context, item) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
      ),
    );
  }
}
