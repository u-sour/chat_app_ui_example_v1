import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Chat App UI',
                    style: theme.textTheme.headlineLarge
                        ?.copyWith(fontWeight: FontWeight.bold))
              ],
            )),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard"),
            ),
            const ListTile(
              leading: Icon(Icons.chat),
              title: Text("Chat"),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
        ),
      ],
    ));
  }
}
