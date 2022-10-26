//import 'package:expressive_diary/Screens/frame_widget.dart';
//import 'package:expressive_diary/Screens/main.dart';
import 'package:expressive_writing/common/logger_provider.dart';
import 'package:expressive_writing/presentation/first_page/firstpage_notifier.dart';
import 'package:expressive_writing/presentation/navigation_page/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstPage extends HookConsumerWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;
  String userEmail = "";
  String userPassword = "";
  String infoText = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(firstPageNotifierProvider);
    final notifier = ref.read(firstPageNotifierProvider.notifier);
    final logger = ref.read(loggerProvider);
    final emailController = useTextEditingController(text: "");
    final passwordController = useTextEditingController(text: "");
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "E-mail"),
                onChanged: (String value) {
                  return notifier.setEmail(value);
                },
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                onChanged: (String value) {
                  return notifier.setPassword(value);
                },
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(infoText),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      await notifier.signUp();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const NavigationPage()),
                          (route) => false);
                    } catch (e) {
                      logger.e(e.toString());
                    }
                  },
                  child: const Text("新規登録"),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () async {
                    try {
                      await notifier.signIn();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const NavigationPage()),
                          (route) => false);
                    } catch (e) {
                      logger.e(e.toString());
                    }
                  },
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
