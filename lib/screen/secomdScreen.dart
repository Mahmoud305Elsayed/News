import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget {
  final String image;
  final String text;
  secondScreen(this.image, this.text);
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            image: NetworkImage(image),
            height: 300,
            width: 410,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "2022-04-26557481257-41Z",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 156, 158, 156)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd,Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd Mobile Of Legnd",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
