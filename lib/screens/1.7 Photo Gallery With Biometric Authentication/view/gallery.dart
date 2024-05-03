import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: Icon(Icons.menu),
        title: Text('Gallery'),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black45,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    alignment: Alignment.center,
                    child: Text("Albums ▾",style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  Spacer(),
                  Icon(Icons.search),
                  Icon(Icons.more_vert)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
