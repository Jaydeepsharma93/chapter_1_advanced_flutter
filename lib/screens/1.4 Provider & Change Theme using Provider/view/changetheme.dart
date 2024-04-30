import 'package:chapter_1_advanced_flutter/screens/1.4%20Provider%20&%20Change%20Theme%20using%20Provider/modal/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                ),
                Icon(
                  Icons.add_circle_outline,
                  size: 40,
                )
              ],
            ),
            SizedBox(height: 10),
            CircleAvatar(maxRadius: 90),
            Text(
              "Testing User",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80),
            ListTile(
              leading: Icon(Icons.sunny, size: 32),
              title: Text(
                "Light mode",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              trailing: Switch(
                value:
                    Provider.of<CounterProvider>(context, listen: true).isLight,
                onChanged: (value) {
                  Provider.of<CounterProvider>(context,listen: false).themeChange(value);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.grid_on, size: 32),
              title: Text(
                "Story",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 32),
              title: Text(
                "Settings and Privacy",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: Icon(Icons.chat_outlined, size: 32),
              title: Text(
                "Help Center",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications, size: 32),
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
