import 'package:chapter_1_advanced_flutter/screens/1.7%20Photo%20Gallery%20With%20Biometric%20Authentication/modal/imglist.dart';
import 'package:chapter_1_advanced_flutter/screens/1.7%20Photo%20Gallery%20With%20Biometric%20Authentication/view/lockgallery.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

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
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: Text(
                      "Albums ▾",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search),
                  PopupMenuButton(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    surfaceTintColor: Colors.white,
                    elevation: 20,
                    onSelected: (value) async {
                      if (value == "Hidden images") {
                        await Provider.of<GalleryProvider>(context,
                                listen: false)
                            .authentication();
                        if (Provider.of<GalleryProvider>(context, listen: false)
                            .isVerified) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LockGallery()));
                        }
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    itemBuilder: (context) => [
                      const PopupMenuItem<String>(
                        value: 'Recently Deleted',
                        child: ListTile(
                          leading: Icon(Icons.delete),
                          title: Text('Recently Deleted'),
                        ),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Hidden images',
                        child: ListTile(
                          leading: Icon(Icons.visibility_off_outlined),
                          title: Text('View Hidden'),
                        ),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Select All',
                        child: ListTile(
                          leading: Icon(Icons.select_all),
                          title: Text('Select All'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.85),
                    itemCount: imgList.length,
                    itemBuilder: (context, index) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          imgList[index]['image'],
                                        ))),
                              ),
                              Text(
                                imgList[index]["name"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              Text(
                                "${imgList[index]["quantity"]}",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ])))
          ],
        ),
      ),
    );
  }
}
