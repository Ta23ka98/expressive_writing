//import 'package:expressive_diary/Screens/frame_widget.dart';
//import 'package:expressive_diary/Screens/main.dart';
import 'package:expressive_writing/common/logger_provider.dart';
import 'package:expressive_writing/presentation/delete_page/delete_page_notifier.dart';
import 'package:expressive_writing/presentation/first_page/firstpage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeletePage extends HookConsumerWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String userPassword = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(deletePageNotifierProvider.notifier);
    final passwordController = useTextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeletePage"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                onChanged: (String value) {
                  return notifier.setPassword(value);
                },
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () async {
                      await notifier.deleteUser();
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    child: const Text("アカウントを削除")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
