import 'package:flutter/material.dart';
import 'signedin_skeleton/bottomNav.dart';
import 'package:grocer/Models/family.dart';


class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key, required this.title});
  final String title;

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  List familyMembers = [];
  @override
  void initState() {
    this.familyMembers = Family().getMembers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      bottomNavigationBar: BottomNav.makeBottom(context),
      body: Scaffold(
        
      ),
    );
  }
}