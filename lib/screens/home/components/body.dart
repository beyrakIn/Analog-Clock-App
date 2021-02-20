import 'package:clock/constants.dart';
import 'package:clock/screens/home/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';

import 'clock_painter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Clock()
        ],
      ),
    );
  }
}

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    color: kShadowColor.withOpacity(0.14),
                    blurRadius: 64)
              ]),
          child: CustomPaint(
            painter: ClockPainter(context, _dateTime),
          ),
        ),
      ),
    );
  }
}

