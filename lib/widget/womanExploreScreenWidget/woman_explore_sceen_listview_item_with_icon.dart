import 'package:flutter/material.dart';
// import 'package:shundor_go/screens/expolreScreenServices/salon_at_home_sceen.dart';
import 'package:shundor_go/screens/expolreScreenServices/service_host_screen.dart';

class WomanExploreScreenListItemWithIcon extends StatelessWidget {
  final String title;
  final String listImagePath;
  final int index;

  WomanExploreScreenListItemWithIcon(
      this.title, this.listImagePath, this.index);
  @override
  Widget build(BuildContext context) {
    void goToTappedServices(int index) {
      // switch (index) {
      //   case 0:
      //     Navigator.of(context)
      //         .pushNamed(ServiceHostScreen.routeName, arguments: index);
      //     break;
      //   default:
      //     return;
      // }
      Navigator.of(context)
          .pushNamed(ServiceHostScreen.routeName, arguments: index);
    }

    return InkWell(
      onTap: () => goToTappedServices(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white54, shape: BoxShape.rectangle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        listImagePath,
                        width: 40,
                        height: 40,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
