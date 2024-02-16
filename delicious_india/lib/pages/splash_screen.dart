import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'name_input.dart';
import 'main_menu.dart';
import 'package:delicious_india/services/name_save.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

/// Splash Screen Page
class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  String name = "";

  _readName() async {
    final value = await NameSave().readSave();
    name = value;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  void _init() async {
    await _readName();

    if (name.isEmpty || name == "") {
      _navigateToNameInput();
    } else {
      _navigateToMainMenu();
    }
  }

  void _navigateToNameInput() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const NameInputPage(),
        ),
      );
    });
  }

  void _navigateToMainMenu() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MainMenu(
            name: name,
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        foregroundDecoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/logo.png'))),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orange.shade600,
            Colors.white,
            Colors.greenAccent.shade400
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
      ),
    );
  }
}
