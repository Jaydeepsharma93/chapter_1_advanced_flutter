import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class Interaction extends StatelessWidget {
  const Interaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(height: 45),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
                Text(
                  "Contact Us",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 45),
            Text(
              "If you have any queries, get in touch with\nus. We will be happy to help you!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 80),
            InkWell(
              onTap: () {
                Uri url = Uri.parse('tel:+91 9079772485');
                launcher.launchUrl(url);
              },
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(
                      Icons.phone_android,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 25),
                    Text(
                      '+91 9079772485',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Uri url = Uri.parse('mailto:sharmajaydeep1515@gmail.com');
                launcher.launchUrl(url);
              },
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(
                      Icons.email_outlined,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 25),
                    Text(
                      'sharmajaydeep@gmail.com',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Uri url = Uri.parse('sms:+91 9079772485');
                launcher.launchUrl(url);
              },
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(
                      Icons.sms_outlined,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 25),
                    Text(
                      '+91 9079772485',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text(
                    "Social Media",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 5),
                  Divider(
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            Uri url =
                                Uri.parse('https://github.com/jaydeepsharma93');
                            launcher.launchUrl(url,
                                mode: launcher.LaunchMode.inAppWebView);
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/img/github.png',
                                height: 45,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Git Hub',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Uri url = Uri.parse(
                                'https://l.instagram.com/?u=https%3A%2F%2Flinkedin.com%2Fcomm%2Fmynetwork%2Fdiscovery-see-all%3Fusecase%3DPEOPLE_FOLLOWS%26followMember%3Djaydeep-sharma-13b5122a9&e=AT2LqjLOZXLUc5jmmbSMU9ksAe-Mxxo-rIQLNduiSdtn79ggQrr_6GF94B-YD5Y8tnfrGtbPmKh67NrzxXTTw4Xuk4-8SJMRXiO0XH5YpNk65sMPwE6rDsE');
                            launcher.launchUrl(url);
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/img/linkedin.png',
                                height: 45,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Linked In',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
