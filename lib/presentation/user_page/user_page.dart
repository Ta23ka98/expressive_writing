import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 60,
            child: Center(
                child: Text(
              "User Page",
              style: TextStyle(fontSize: 15),
            )),
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('Guest'),
              subtitle: Text('User level：1')),
          Divider(),
          ListTile(title: Text('Diaries：0')),
          Divider(),
          ListTile(title: Text('Diary letters：0')),
          Divider(),
          ListTile(title: Text('Letters until next level： 100')),
          Divider(),
        ],
      ),
    );
  }
}
