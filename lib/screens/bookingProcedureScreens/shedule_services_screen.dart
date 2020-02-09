// import 'package:calendarro/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:shundor_go/dummyData/shedule_service_screen_dummy_data.dart';
import 'package:shundor_go/screens/bookingProcedureScreens/add_location_screen.dart';
import 'package:shundor_go/screens/profileItemScreens/location_screen.dart';
import 'package:shundor_go/widget/servicesScreen/shedule_service_screen_listview_item.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
// import 'package:calendarro/calendarro.dart';
// import 'package:kalendar/kalendar.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class SheduleServicesScreen extends StatefulWidget {
  static const routeName = 'shedule_service_screen';
  static String time;
  @override
  _SheduleServicesScreenState createState() => _SheduleServicesScreenState();
}

class _SheduleServicesScreenState extends State<SheduleServicesScreen> {
  // Calendarro monthCalendarro;

  String onlyDayFromDate;
  String onlyMonthFromDate;
  String onlyYearFromDate;
  DateTime dateTime;
  CalendarController _calendarController;
  final appbar = new AppBar(
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      onPressed: null,
    ),
    backgroundColor: Colors.black,
    title: new Text('Shedule Service'),
  );
  String choosenDate;
  String choosenTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    // var startDate = DateUtils.getFirstDayOfCurrentMonth();
    // var endDate = DateUtils.getLastDayOfNextMonth();
    // monthCalendarro = Calendarro(
    //     startDate: startDate,
    //     endDate: endDate,
    //     displayMode: DisplayMode.MONTHS,
    //     selectionMode: SelectionMode.SINGLE,
    //     onTap: (date) {
    //       print("onTap: $date");
    //     });
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbar.preferredSize.height;
    return new Scaffold(
      appBar: appbar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: height * 0.05,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 16),
              child: Text(
                'When would you like your service?',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
          ),
          Container(
            height: height * 0.65,
            child: TableCalendar(
              calendarStyle: CalendarStyle(
                todayColor: Colors.grey,
              ),
              headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonShowsNext: false,
                  formatButtonVisible: false),
              calendarController: _calendarController,
              onDaySelected: (day, events) {
                onlyDayFromDate = DateFormat('d').format(day);
                onlyMonthFromDate = DateFormat('LLLL').format(day);
                onlyYearFromDate = DateFormat('y').format(day);
                print(onlyDayFromDate);
                print(onlyMonthFromDate);
                print(onlyYearFromDate);
              },
              builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.transparent,
                            border: Border.all(color: const Color(0xFFD4AF37))),
                      ),
                  todayDayBuilder: (context, date, events) => Container(
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.blue),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: const Color(0xFFD4AF37)),
                            color: Colors.transparent),
                      )),
            ),
          ),
          Container(
            height: height * 0.05,
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 16),
              child: Text('At what time should the expert arrive?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),
          ),
          Container(
            height: height * 0.15,
            padding: const EdgeInsets.only(
              left: 16,
            ),
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SHEDULE_SERVICE_SCREEN_LISTVIEW_DUMMY_DATA.length,
              itemBuilder: (ctx, index) => SheduleServiceScreenListviewItem(
                  SHEDULE_SERVICE_SCREEN_LISTVIEW_DUMMY_DATA[index].bookingType,
                  SHEDULE_SERVICE_SCREEN_LISTVIEW_DUMMY_DATA[index].bookingTime,
                  index),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(
                AddLocationScreen.routeName,
                arguments: onlyDayFromDate),
            child: Container(
              height: height * 0.10,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'PROCEED',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),

      //  CalendarCarousel(
      //     selectedDayButtonColor: Colors.red,
      //     selectedDayBorderColor: Colors.black,
      //     headerTextStyle: TextStyle(
      //         color: Colors.black,
      //         fontSize: 18,
      //         fontWeight: FontWeight.bold),
      //     isScrollable: false,
      //     todayBorderColor: Colors.black,
      //     todayButtonColor: Colors.green,
      //     selectedDayTextStyle: TextStyle(
      //       color: Colors.red,
      //     )),
      //  Kalendar(
      //     // dayTileBuilder: (dayProps) => dayProps.onTap(determineSelection),
      //     ),
    );
  }
}
