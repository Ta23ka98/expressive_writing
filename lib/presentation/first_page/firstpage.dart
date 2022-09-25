//import 'package:expressive_diary/Screens/frame_widget.dart';
//import 'package:expressive_diary/Screens/main.dart';
import 'package:expressive_writing/presentation/navigation_page/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String userEmail = "";
  String userPassword = "";
  String infoText = "";

  @override
  void initState() {
    super.initState();
  }

  Future<void> SignUp() async {
    try {
      final UserCredential result = await auth.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );

      late final userID = FirebaseAuth.instance.currentUser?.uid;

      final CollectionReference userCollection =
          FirebaseFirestore.instance.collection('Users');
      userCollection
          .doc(userID)
          .set({
            'name': "ゲスト",
            'userLevel': 1,
            'diaryNumbers': 0,
            'diaryLetters': 0,
            'lettersUntilNextLevel': 5,
          })
          .then(
            (value) => print("User Added!!!"),
          )
          .catchError(
            (error) => print("Failed to add user...: $error"),
          );

      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const NavigationPage();
          },
        ),
      );
    } catch (e) {
      setState(() {
        infoText = "登録失敗：${e.toString()}";
      });
    }
  }

  Future<void> Login() async {
    try {
      final UserCredential result = await auth.signInWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );
      //final User user = result.user!;
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const NavigationPage();
          },
        ),
      );
    } catch (e) {
      setState(() {
        infoText = "ログイン失敗：${e.toString()}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "E-mail"),
                onChanged: (String value) {
                  setState(() {
                    userEmail = value;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                onChanged: (String value) {
                  setState(() {
                    userPassword = value;
                  });
                },
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(infoText),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: SignUp,
                  child: const Text("新規登録"),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: Login,
                  child: const Text("ログイン"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
