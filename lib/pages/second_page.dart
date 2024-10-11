import 'package:flutter/material.dart';
import 'package:login1/pages/main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('Second sample page'),
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
