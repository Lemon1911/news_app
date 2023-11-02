import 'package:flutter/material.dart';

import 'custom_widget/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        drawer: const DrawerCustomWidget(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "News App",
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "Pick your category \n of interest",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4F5A69),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
