import 'package:flutter/material.dart';
import 'package:movie_today/src/utils/constants.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Calendar",
                      style:
                          TextStyle(fontSize: 24, color: Constants.darkPrimary)
                      // .copyWith(color: widget.palette.lightMutedColor.color),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
