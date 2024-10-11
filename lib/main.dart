import 'package:flutter/material.dart';
import 'package:login1/pages/login_page.dart';

/*

flutter build apk --build-name=1.0 --build-number=1 //Para crear apk android 

flutter build windows //Para crear un .exe para Windows

flutter run -d chrome --web-renderer html
flutter build web --web-renderer html

--Luego de compilar, hay que modificar el archivo index.html de la carpeta Build
--Para colocarle el nombre de la carpeta en la cual estará finalmente en el servidor
  <base href="/flutterweb/">


*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
//        home: MainPage(),
//          home: SecondPage(),
//        home: FirstPage(),
    );
  }
}
