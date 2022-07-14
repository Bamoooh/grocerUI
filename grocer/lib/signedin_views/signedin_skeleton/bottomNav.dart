import 'package:flutter/material.dart';

class BottomNav {
  static Widget makeBottom(context) {
    return Container(
      height: 55.0,
      child: BottomAppBar(
        color: const Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/marketsPage');                
              },
              
            ),
            IconButton(
              icon: const Icon(Icons.group, color: Colors.white),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/familyPage');
              },
            ),
            // IconButton(
            //   icon: const Icon(Icons.hotel, color: Colors.white),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
