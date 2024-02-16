import 'package:delicious_india/widgets.dart';
import 'package:flutter/material.dart';

class Foodpedia extends StatefulWidget {
  const Foodpedia({super.key});

  @override
  State<Foodpedia> createState() => _FoodpediaState();
}

/// Page for Foodpedia
class _FoodpediaState extends State<Foodpedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9900),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF9900),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 0.065],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: Widgets().generateLists(context),
          ),
        ),
      ),
    );
  }
}
