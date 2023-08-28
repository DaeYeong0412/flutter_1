import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class TimeApp extends StatefulWidget {
  const TimeApp({Key? key}) : super(key: key);

  @override
  State<TimeApp> createState() => _TimeAppState();
}

class _TimeAppState extends State<TimeApp> {
  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(
      const Duration(seconds: 1),
      builder: (context) {
        return Container(
          margin: EdgeInsets.only(top: 5),
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '지식의 창고',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.5,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  formatDate(DateTime.now(), [hh, ':', nn]),
                  style: const TextStyle(
                      fontSize: 32.5,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Text(
                formatDate(DateTime.now(), [yyyy, '. ', mm, '. ', dd, '  ', am]),
                style: const TextStyle(fontSize: 11, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
