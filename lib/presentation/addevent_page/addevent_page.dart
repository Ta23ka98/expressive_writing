import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:expressive_diary/event.dart';
import 'package:flutter/material.dart';
//import 'basic_example.dart';
import 'package:expressive_writing/presentation/calender_page/calender_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddEventPage extends HookConsumerWidget {
  int charLength = 0;
  String _text = '';
  final DateTime _focusedDay = DateTime.now();
  //final String userID = FirebaseAuth.instance.currentUser!.uid;
  final CollectionReference eventCollection =
      FirebaseFirestore.instance.collection('EventExample');

  @override
  void dispose() {
    // _textEditingController.dispose();
    // super.dispose();
  }

  void _handleText(String e) {
    // setState(() {
    //   _text = e;
    //   charLength = _text.length;
    // });
  }

  // void addEventMethod() {
  //   addEvent();
  //   updateUser();
  //   LevelUp();
  // }

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
    final descriptionController = useTextEditingController(text: "");
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
                onTap: () {},
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: " 日記を書こう！"),
                controller: descriptionController,
                onChanged: _handleText,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "${charLength.toString()}字！",
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: null,
                //addEventMethod,
                child: Text("完了"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
