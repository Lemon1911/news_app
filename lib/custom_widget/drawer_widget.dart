import 'package:flutter/material.dart';

class DrawerCustomWidget extends StatelessWidget {
  const DrawerCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      width: mediaQuery.width * 0.7,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: mediaQuery.width * 0.7,
            height: mediaQuery.height * 0.15,
            color: theme.primaryColor,
            child: const Center(
              child: Text(
                "News App!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, weight: 15),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.settings, size: 30, weight: 15),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
