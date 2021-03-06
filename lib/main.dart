import 'package:app_mobile/utilities/global.scaffold.dart';
import 'package:app_mobile/views/home.view.dart';
import 'package:app_mobile/views/signup.view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignupView(),
      builder: (context, child) {
        return Scaffold(
          key: GlobalScaffold.instance.scaffkey,
          body: child,
        );
      },
      routes: {
        'signupView': (context) => SignupView(),
        'homeView': (context) => HomeView()
      },
    );
  }
}
