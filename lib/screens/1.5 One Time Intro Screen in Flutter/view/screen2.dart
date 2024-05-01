import 'package:chapter_1_advanced_flutter/screens/1.5%20One%20Time%20Intro%20Screen%20in%20Flutter/view/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "SKIP",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        letterSpacing: 1.5,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Image.asset('assets/img/bg2.png'),
            SizedBox(height: 40),
            Text(
              'Order your favourites',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "When you order Eat Street, we'll hook.\nyou up with exclusive coupons,\nspecial sand rewards.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45, letterSpacing: 0.5,fontSize: 18),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Screen3()));
                  },
                  child: Container(
                    height: 55,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade900,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Text('Get Start',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}