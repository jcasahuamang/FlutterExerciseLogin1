import 'package:flutter/material.dart';
import 'package:login1/pages/first_page.dart';
import 'package:login1/pages/second_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 220,
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 72,
                      backgroundImage: AssetImage("assets/icons/Josue_Face.png"),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Main Menu'),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('First Page'),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const FirstPage(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Second Page'),
              onTap: (){
                //To close navigation drawer before, so when i return the previous drawer is not visible
                Navigator.pop(context);
                Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SecondPage(),
                                ),
                              );
              },
              /*
              onTap: () => 
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              ),
              */

            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notificacions'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
