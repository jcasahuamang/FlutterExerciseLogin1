import 'package:flutter/material.dart';
import 'package:login1/pages/main_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('First sample page'),
            ),
          ),
          ElevatedButton(
            onPressed: (){
                Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const MainPage(),
                                ),
                              );

            },
            child: const Text('Go to Main Page'),
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}