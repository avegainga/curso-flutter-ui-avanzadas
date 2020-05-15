import 'package:flutter/material.dart';
import 'package:flutter_ui_avanzadas/db/db.dart';
import 'package:flutter_ui_avanzadas/pages/home/home_page.dart';
import 'package:flutter_ui_avanzadas/pages/login/login_page.dart';
import 'package:flutter_ui_avanzadas/pages/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'sans'),
      home: SplashPage(),
      routes: {
        HomePage.routeName: (_) => HomePage(),
        SplashPage.routeName: (_) => SplashPage(),
        LoginPage.routeName: (_) => LoginPage(),
      },
    );
  }
}
