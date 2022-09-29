import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:memo/firebase_options.dart';
import 'package:memo/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginScreen(),
      //initialRoute: ListScreen.id,
      //routes: {
      //AddEditMemoPage.id : (context) => AddEditMemoPage(),
      // ListScreen.id : (context) => const LoginScreen(),
      //MemoDetailPage.id : (context) => MemoDetailPage(),
    );
  }
}
