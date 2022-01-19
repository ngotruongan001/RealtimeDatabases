import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tictoatoe_app/homePage.dart';
import 'package:tictoatoe_app/ui/theme/color.dart';
import 'package:tictoatoe_app/utils/game_logic.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}