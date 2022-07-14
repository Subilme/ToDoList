import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_v3/src/authentication.dart';
import 'package:todo_list_v3/src/utils.dart';

import 'pages/auth.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      title: 'To Do List',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Authentication(),
    );
  }
}