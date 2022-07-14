import 'package:flutter/material.dart';
import 'signedin_skeleton/bottomNav.dart';
import 'package:grocer/Models/market.dart';
import 'groceries_page.dart';

class MarketsPage extends StatefulWidget {
  const MarketsPage({super.key, required this.title});
  final String title;
  @override
  State<MarketsPage> createState() => _MarketsPageState();
}

class _MarketsPageState extends State<MarketsPage> {
  List markets = List.filled(0, 0, growable:true);
  @override
  void initState(){
    markets = Market().getMarkets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNav.makeBottom(context),
      body: makeBody(markets),);
  }

    Widget makeBody(List items) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return makeCard(context, items[index]);
      },
    );
  }

  Widget makeCard(BuildContext context, Market item) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(context, item),
      ),
    );
  }

  Widget makeListTile(BuildContext context, Market item) {
    return ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => GroceriesPage(marketId: item.name, marketName: item.name, userId: '1',) ));
        },
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
            Text(' Quantity: ${item.count}', style: TextStyle(color: Colors.white))
          ],
        ),
        trailing: const Icon(Icons.keyboard_arrow_right,
            color: Colors.white, size: 30.0));
  }
}
