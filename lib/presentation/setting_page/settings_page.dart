import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          SizedBox(
            height: 60,
            child: Center(
                child: Text(
              "Settings Page",
              style: TextStyle(fontSize: 15),
            )),
          ),
          Divider(),
          ListTile(title: Text('How to use')),
          Divider(),
          ListTile(title: Text('Terms of Service')),
          Divider(),
          ListTile(title: Text('Privacy Policy')),
          Divider(),
        ],
      ),
    );
  }
}
