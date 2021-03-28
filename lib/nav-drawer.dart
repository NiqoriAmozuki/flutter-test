import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.folder,
              text: 'About Me',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.videogame_asset_rounded,
              text: 'Game',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'What is this ?',
              onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/Profile.png'), fit: BoxFit.cover),
    ),
    accountName: Text('Niqori'),
    accountEmail: Text('test@email.com'),
    decoration: BoxDecoration(color: Color(0xff020d1c)),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
