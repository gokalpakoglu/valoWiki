import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget implements PreferredSizeWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: const [
        ListTile(
          title: Text('Home'),
          onTap: null,
        ),
        ListTile(
          title: Text('Agents'),
          onTap: null,
        ),
        ListTile(
          title: Text('Weapons'),
          onTap: null,
        ),
        ListTile(
          title: Text('Maps'),
          onTap: null,
        ),
        ListTile(
          title: Text('Gamemodes'),
          onTap: null,
        ),
        ListTile(
          title: Text('About'),
          onTap: null,
        ),
      ],
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
