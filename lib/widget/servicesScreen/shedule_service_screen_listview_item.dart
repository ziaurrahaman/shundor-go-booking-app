import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/shedule_service_screen_dummy_data.dart';

class SheduleServiceScreenListviewItem extends StatefulWidget {
  final String bookingType;
  final String bookingTime;
  final int index;

  SheduleServiceScreenListviewItem(
      this.bookingType, this.bookingTime, this.index);

  @override
  _SheduleServiceScreenListviewItemState createState() =>
      _SheduleServiceScreenListviewItemState();
}

class _SheduleServiceScreenListviewItemState
    extends State<SheduleServiceScreenListviewItem> {
  _SheduleServiceScreenListviewItemState();
  bool isSelected;

  // Widget changeSelectedItemBorderColor(
  //     String pickedTime, bool isSelectedFromMethod) {
  //   setState(() {
  //     isSelected = isSelectedFromMethod;
  //   });
  //   print(pickedTime);
  //   if (isSelected == true) {
  //     isSelected = false;
  //   }

  //   return Container(
  //     height: 50,
  //     width: 150,
  //     decoration: BoxDecoration(
  //         shape: BoxShape.rectangle,
  //         border: Border.all(color: const Color(0xFFD4AF37))),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: <Widget>[
  //         Container(
  //           padding:
  //               const EdgeInsets.only(top: 5.0, bottom: 5, left: 10, right: 10),
  //           margin: EdgeInsets.only(left: 10, right: 10),
  //           child: Text(
  //             widget.bookingTime,
  //             style: TextStyle(
  //                 color: const Color(0xFFD4AF37),
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.bold),
  //           ),
  //         ),
  //         Padding(
  //           padding:
  //               const EdgeInsets.only(top: 5.0, bottom: 5, left: 8, right: 8),
  //           child: Text(widget.bookingType,
  //               style: TextStyle(
  //                   color: const Color(0xFFD4AF37),
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.bold)),
  //         )
  //       ],
  //     ),
  //   );

  // isSelected
  //     ?

  //     : Container(
  //         decoration: BoxDecoration(
  //             shape: BoxShape.rectangle,
  //             border: Border.all(color: Colors.transparent)),
  //       );
  // }

  @override
  Widget build(BuildContext context) {
    String timeSelected =
        SHEDULE_SERVICE_SCREEN_LISTVIEW_DUMMY_DATA[widget.index]
            .bookingTime
            .toString();
    return InkWell(
      onTap: () => print(timeSelected),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
        child: Card(
          elevation: 5,
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: const Color(0xFFD4AF37))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    widget.bookingTime,
                    style: TextStyle(
                        color: const Color(0xFFD4AF37),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(widget.bookingType,
                      style: TextStyle(
                          color: const Color(0xFFD4AF37),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
