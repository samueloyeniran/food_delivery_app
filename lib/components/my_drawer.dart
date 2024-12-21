import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/settings_page.dart';
import 'package:food_delivery_app/components/my_drewer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrewerTile(
            text: "H O M E",
            iconData: Icons.home,
            onTap: () => Navigator.pop(context),
            icon: Icon(Icons.home),
          ),
          MyDrewerTile(
              text: "S E T T I N G S",
              iconData: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              icon: Icon(Icons.settings)),
          Spacer(),
          MyDrewerTile(
            icon: Icon(Icons.logout),
            text: "L O G O U T",
            iconData: Icons.logout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
