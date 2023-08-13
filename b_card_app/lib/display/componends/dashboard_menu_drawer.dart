import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // TODO: Handle menu item 1
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // TODO: Handle menu item 2
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Item 3'),
            onTap: () {
              // TODO: Handle menu item 3
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
