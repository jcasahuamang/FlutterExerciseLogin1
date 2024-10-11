import 'package:flutter/material.dart';
import 'package:login1/utils/drawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          const Expanded(
            child: Center(child: Text('Main sample page')),
          ),
          Expanded(
            child: Container(color: Colors.green),
          ),
          Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text('Open Drawer'),
              );
            },
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}
