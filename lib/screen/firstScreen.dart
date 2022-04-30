import 'package:flutter/material.dart';

import 'secomdScreen.dart';

class firstScreen extends StatelessWidget {
  List<String> image = [
    'https://tinypng.com/images/social/website.jpg',
    'https://tinypng.com/images/social/website.jpg',
    'https://www.cleverfiles.com/howto/wp-content/uploads/2018/03/minion.jpg',
    'https://www.adobe.com/express/feature/image/jpg-to-png/media_1b0ad89a4a5ad233f5708e21b5998d6638cb07929.png?width=750&format=png&optimize=medium',
    'https://bigjpg.com/static/css/og.jpg',
    'https://www.ionos.com/digitalguide/fileadmin/DigitalGuide/Teaser/iptc-daten-t.jpg',
    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://www.ionos.com/digitalguide/fileadmin/DigitalGuide/Teaser/iptc-daten-t.jpg',
  ];
  List<String> text = [
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
    "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "News",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          itemCount: image.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: GestureDetector(
                onTap: (() => Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return secondScreen(image[index], text[index]);
                    })))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: NetworkImage(
                            image[index],
                          ),
                          height: 100,
                          width: 150,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(text[index]),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
