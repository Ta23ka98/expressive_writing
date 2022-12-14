import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expressive_writing/presentation/addevent_page/addevent_page_notifier.dart';
//import 'package:expressive_diary/event.dart';
import 'package:flutter/material.dart';
//import 'basic_example.dart';
import 'package:expressive_writing/presentation/calender_page/calender_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddEventPage extends HookConsumerWidget {
  final DateTime _focusedDay = DateTime.now();

  // Future<void> addEvent() {
  //   if (_textEditingController.text.isEmpty) {
  //   } else {
  //     kEvents[_focusedDay]?.add(
  //       Event(
  //         title: _textEditingController.text,
  //         //createdAt: Timestamp.fromDate(_focusedDay),
  //         //wordCount: charLength
  //       ),
  //     );
  //     print(kEvents[_focusedDay]);
  //     //getRepository();
  //     setState(() {});
  //     Navigator.pop(context);
  //   }
  //   return eventCollection
  //       .doc()
  //       .set({
  //         'description': _text,
  //         // 'createdAt': _focusedDay,
  //         // 'wordCount': charLength,
  //         'madeBy': userID,
  //       })
  //       .then(
  //         (value) => print("Event Added!!!"),
  //       )
  //       .catchError(
  //         (error) => print("Failed to add event...: $error"),
  //       );
  // }
  //
  // Future<void> updateUser() {
  //   final usersRef = FirebaseFirestore.instance.collection('Users');
  //   if (_textEditingController.text.isEmpty) {
  //   } else {}
  //   return usersRef.doc(userID).get().then((DocumentSnapshot snapshot) {
  //     final int diaryNumbers = snapshot.get("diaryNumbers");
  //     final int newDiaryNumbers = diaryNumbers + 1;
  //     final int diaryLetters = snapshot.get("diaryLetters");
  //     final int newDiaryLetters = diaryLetters + charLength;
  //     usersRef.doc(userID).update({
  //       "diaryNumbers": newDiaryNumbers,
  //       "diaryLetters": newDiaryLetters,
  //     });
  //   });
  // }
  //
  // Future<void> LevelUp() async {
  //   final usersRef = FirebaseFirestore.instance.collection('Users');
  //   usersRef.doc(userID).get().then((DocumentSnapshot snapshot) {
  //     final int diaryLetters = snapshot.get("diaryLetters");
  //     final int updatedDiaryLetters = diaryLetters + charLength;
  //     for (int L = 100; L > 0; L--) {
  //       final int minimum = 5 * (L - 1) * (L - 1);
  //       final int maximum = (5 * L * L) + 1;
  //       final int newLevel = L;
  //       if (minimum <= diaryLetters && diaryLetters < maximum) {
  //         break;
  //       } else {}
  //       final int newLettersUntilNextLevel = maximum - updatedDiaryLetters;
  //       usersRef.doc(userID).update({
  //         "userLevel": newLevel,
  //         "lettersUntilNextLevel": newLettersUntilNextLevel,
  //       });
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addEventPageNotifierProvider);
    final notifier = ref.read(addEventPageNotifierProvider.notifier);
    final controller = useTextEditingController(text: "");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("AddEventPage"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${_focusedDay.month.toString()}/${_focusedDay.day.toString()}",
              style: const TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 20),
            Container(
              height: 230,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.blue, width: 1)),
              child: TextField(
                onChanged: (value) => {notifier.setDescriptionAndCount(value)},
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: " ?????????????????????"),
                controller: controller,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "${state.wordCount.toString()}??????",
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  await notifier.addEvent(
                      description: state.description,
                      wordCount: state.wordCount,
                      createdAt: DateTime.now(),
                      madeBy: FirebaseAuth.instance.currentUser!.uid);
                  Navigator.pop(context);
                },
                //addEventMethod,
                child: const Text("??????"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
