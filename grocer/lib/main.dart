import 'package:flutter/material.dart';
import 'package:grocer/signedin_views/groceries_page.dart';
import 'package:grocer/signedin_views/familyPage.dart';
import 'signedin_views/markets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MarketsPage(title: 'Shops List'),
      routes:{
        // '/loginPage': (context) => LoginPage();
        '/marketsPage':(context) => const MarketsPage(title: 'Shops List'), 
        '/familyPage':(context) => const FamilyPage(title: 'Family Members'), 
      } ,
    );
  }
}