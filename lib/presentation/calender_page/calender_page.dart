import 'package:expressive_writing/presentation/addevent_page/addevent_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:expressive_writing/domain/entity/event.dart';
import 'calenderpage_notifier.dart';

class CalenderPage extends HookConsumerWidget {
  final kFirstDay = DateTime(
      DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
  final kLastDay = DateTime(
      DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calenderPageNotifierProvider);
    final notifier = ref.watch(calenderPageNotifierProvider.notifier);
    //notifier.fetchAll();
    notifier.init();
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
              focusedDay: state.focusedDay!,
              selectedDayPredicate: (DateTime date) {
                return isSameDay(state.selectedDay, date);
              },
              eventLoader: (day) {
                return state.events?[day] ?? [];
              },
              onDaySelected: (selectedDay, focusedDay) {
                notifier.onDaySelected(
                    selectedDay: selectedDay,
                    focusedDay: focusedDay,
                    events: state.events?[selectedDay] ?? []);
              },
            ),
            const SizedBox(height: 8.0),
            // SizedBox(
            //   child: ValueListenableBuilder<List<Event>>(
            //     valueListenable: _selectedEvents,
            //     builder: (context, value, _) {
            //       return ListView.builder(
            //         scrollDirection: Axis.vertical,
            //         shrinkWrap: true,
            //         itemCount: value.length,
            //         itemBuilder: (context, index) {
            //           return Container(
            //             margin: const EdgeInsets.symmetric(
            //               horizontal: 12.0,
            //               vertical: 4.0,
            //             ),
            //             decoration: BoxDecoration(
            //               border: Border.all(),
            //               borderRadius: BorderRadius.circular(12.0),
            //             ),
            //             child: ListTile(
            //               onTap: () => print('${value[index]}'),
            //               title: Text('${value[index]}'),
            //             ),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddEventPage(),
                ));
          },
          child: const Icon(Icons.add)),
    );
  }
}
