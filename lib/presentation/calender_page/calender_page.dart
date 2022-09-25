import 'dart:collection';
//import 'package:expressive_diary/eventRepository.dart';
import 'package:expressive_writing/presentation/addevent_page/addevent_page.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:expressive_writing/domain/entity/event.dart';
//import '../utils.dart' as utils;

Map<DateTime, List<Event>> selectedEvents = {};
DateTime _focusedDay = DateTime.now();
final kFirstDay =
    DateTime(DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
final kLastDay =
    DateTime(DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);

/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
var kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(kEventSource);

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

List<Event> _getEventsForDay(DateTime day) {
  // Implementation example
  return kEvents[day] ?? [];
}

Future getRepository() async {
  // final eventRepository = EventRepository();
  // final eventStream = await eventRepository.subscribeEvents();
}

Map<DateTime, List<Event>> kEventSource = {
  // _focusedDay: [const Event(title: "今日の日記")],
  // DateTime(2022, 4, 28, 12, 15): [
  //   const Event(title: "4/28-1"),
  //   const Event(title: "4/28-2")
  // ],
};

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  DateTime? _selectedDay = _focusedDay;
  late final ValueNotifier<List<Event>> _selectedEvents =
      ValueNotifier(_getEventsForDay(_selectedDay!));
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  void initState() {
    super.initState();
    //_selectedDay = _focusedDay;
    //_selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(
        () {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        },
      );
      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
              child: Center(
                  child: Text(
                "CalenderPage",
                style: TextStyle(fontSize: 15),
              )),
            ),
            const Divider(),
            TableCalendar<Event>(
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              selectedDayPredicate: (DateTime date) {
                return isSameDay(_selectedDay, date);
              },
              calendarFormat: _calendarFormat,
              eventLoader: _getEventsForDay,
              onDaySelected: _onDaySelected,
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              child: ValueListenableBuilder<List<Event>>(
                valueListenable: _selectedEvents,
                builder: (context, value, _) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ListTile(
                          onTap: () => print('${value[index]}'),
                          title: Text('${value[index]}'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddEventPage(),
                ));
          },
          child: const Icon(Icons.add)),
    );
  }
}
