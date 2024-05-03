import 'package:flutter/material.dart';

class LockGallery extends StatefulWidget {
  const LockGallery({super.key});

  @override
  State<LockGallery> createState() => _LockGalleryState();
}

class _LockGalleryState extends State<LockGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: Icon(Icons.menu),
        title: Text('Hidden Photos'),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black45,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/img/1.jpg",height: 100),
              Image.asset("assets/img/2.jpg",height: 100),
              Image.asset("assets/img/3.jpg",height: 100),
              Image.asset("assets/img/4.jpg",height: 100)
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/img/5.jpg",height: 100),
              Image.asset("assets/img/6.jpg",height: 100),
              Image.asset("assets/img/7.jpg",height: 100),
              Image.asset("assets/img/8.jpg",height: 100)
            ],
          )
        ],
      ),
    );
  }
}
