import 'package:flutter/material.dart';
import 'userpage_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UserPage extends HookConsumerWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userPageNotifierProvider);
    final notifier = ref.read(userPageNotifierProvider.notifier);
    useEffect(() {
      Future<void> fetchUser() async {
        await notifier.fetch();
      }

      fetchUser();
      return null;
    });
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
            child: Center(
                child: Text(
              "User Page",
              style: TextStyle(fontSize: 15),
            )),
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.person),
              title: Text(state.user.userName),
              subtitle: Text('User level：${state.user.userLevel}')),
          const Divider(),
          ListTile(title: Text('Diaries：${state.user.diaryNumbers}')),
          const Divider(),
          ListTile(title: Text('Diary letters：${state.user.diaryLetters}')),
          const Divider(),
          const ListTile(title: Text('Letters until next level： 100')),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                onPressed: () async {
                  await notifier.deleteUser();
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text("アカウントを削除")),
          ),
        ],
      ),
    );
  }
}
