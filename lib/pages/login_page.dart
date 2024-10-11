import 'package:flutter/material.dart';
import 'package:login1/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Log in or sign up to Airbnb'),
        ),
      ),
      body: ListView(
        children: [Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey[600],
                              fontStyle: FontStyle.italic,fontSize: 14),
                  suffixIcon: const Icon(Icons.check),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12)),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 6),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey[600],
                              fontStyle: FontStyle.italic,fontSize: 14),                
                  suffixIcon: const Icon(Icons.check),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
              child: Text(
                  'Well call or text you to confirm your number. Standard message and data rates apply.'),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 350.0,
                height: 50.0,
                child: OutlinedButton(
                  onPressed: (){
                        Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const MainPage(),
                                ),
                              );
                  },
                  child: const Text('Continue'),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                //Divider(),
                Expanded(
                  child: Center(child: Text('or')),
                ),
                //Divider(),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12, top: 4, bottom: 4),
              child: SizedBox(
                width: 350.0,
                height: 50.0,
                child: OutlinedButton(
                    onPressed: _onTap,
                    child: const Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Continue with email',
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12, top: 4, bottom: 4),
              child: SizedBox(
                width: 350.0,
                height: 50.0,
                child: OutlinedButton(
                    onPressed: _onTap,
                    child: Row(
                      children: [
        //                      Icon(Icons.facebook),
                        Image.network(
                            'https://img.icons8.com/?size=100&id=118497&format=png&color=000000.png',
                            fit: BoxFit.cover),
        
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Continue with Facebook',
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12, top: 4, bottom: 4),
              child: SizedBox(
                width: 350.0,
                height: 50.0,
                child: OutlinedButton(
                    onPressed: _onTap,
                    child: Row(
                      children: [
                        //Icon(Icons.face),
                        Image.network(
                            'http://pngimg.com/uploads/google/google_PNG19635.png',
                            fit: BoxFit.cover),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Continue with Google',
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12, top: 4, bottom: 4),
              child: SizedBox(
                width: 350.0,
                height: 50.0,
                child: OutlinedButton(
                    onPressed: _onTap,
                    child: Row(
                      children: [
                        //Icon(Icons.apple),
                        Image.network(
                            'https://img.icons8.com/?size=100&id=30840&format=png&color=000000.png',
                            fit: BoxFit.cover),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Continue with Apple',
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }

  void _onTap() {
  }
}
