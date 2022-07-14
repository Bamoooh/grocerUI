
import 'package:flutter/material.dart';
import '../Models/groceryItem.dart';
import 'signedin_skeleton/bottomNav.dart';

class GroceriesPage extends StatefulWidget {
  const GroceriesPage(
      {super.key,
      required this.marketId,
      required this.marketName,
      required this.userId});
  final String marketId;
  final String marketName;
  final String userId;

  @override
  State<GroceriesPage> createState() => _GroceriesPageState();
}

class _GroceriesPageState extends State<GroceriesPage> {
  List groceries = List.filled(0, 0, growable: true);
  List isChecked = List.filled(2, false,growable: true);
  @override
  void initState() {
    groceries = Grocery().getGroceries();
    isChecked = List.filled(groceries.length, true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.marketName}\'s Groceries')),
      bottomNavigationBar: BottomNav.makeBottom(context),
      body: makeBody(Grocery().getGroceries()),
    );
  }

  Widget makeBody(List items) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return makeCard(context, items[index], index);
      },
    );
  }

  Widget makeCard(BuildContext context, Grocery item, int index) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(context, item, index),
      ),
    );
  }

  Widget makeListTile(BuildContext context, Grocery item, int index) {
    return ListTile(
      onTap: () {},
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: const EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
            border:
                Border(right: BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        item.name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Icon(Icons.linear_scale, color: Colors.yellowAccent),
          Text(' Quantity: ${item.quantity}',
              style: TextStyle(color: Colors.white))
        ],
      ),
      trailing: Checkbox(
          value: isChecked[index],
          onChanged: (value) => setState(() {
                this.isChecked[index]= value!;
                print('${index}hi value:${value} ischecked:${this.isChecked[index]}}}');
              })),
    );
  }
}
