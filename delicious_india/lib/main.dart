import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'services/name_save.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NameSave().writeFirstSave();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Italiana'),
      home: const SplashScreen(),
    );
  }
}
