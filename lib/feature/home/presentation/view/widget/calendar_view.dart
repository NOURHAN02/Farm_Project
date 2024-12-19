import 'package:flutter/material.dart';
import 'package:framer_project/core/utils/constant.dart';
import 'package:framer_project/core/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime focusedDay = DateTime.now();
  List<DateTime> selectedDays = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // شريط رأس مخصص
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('MMMM yyyy').format(focusedDay),
                style: Styles.textStyle20.copyWith(color: kCalendarColor),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left, color:kCalendarColor),
                    onPressed: () {
                      setState(() {
                        focusedDay = DateTime(
                          focusedDay.year,
                          focusedDay.month - 1,
                          1,
                        );
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right,color: kCalendarColor),
                    onPressed: () {
                      setState(() {
                        focusedDay = DateTime(
                          focusedDay.year,
                          focusedDay.month + 1,
                          1,
                        );
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),

        TableCalendar(
          firstDay: DateTime(2000),
          lastDay: DateTime(2100),
          focusedDay: focusedDay,
          selectedDayPredicate: (day) {
            return selectedDays.any((selectedDay) => isSameDay(selectedDay, day));
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              if (selectedDays.any((day) => isSameDay(day, selectedDay))) {
                selectedDays.removeWhere((day) => isSameDay(day, selectedDay));
              } else {
                selectedDays.add(selectedDay);
              }
              this.focusedDay = focusedDay;
            });
          },
          calendarStyle: const CalendarStyle(
            todayDecoration:  BoxDecoration(),
            todayTextStyle:  TextStyle(
              color: kCalendarColor,
              fontWeight: FontWeight.bold,
            ),

            selectedDecoration:  BoxDecoration(),
            selectedTextStyle:  TextStyle(
              color: kCalendarColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          headerVisible: false,
        ),

      ],
    );
  }
}

