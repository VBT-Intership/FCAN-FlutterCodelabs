import 'package:flutter/material.dart';
import 'package:flutterCodelabs/components/cards/list_card.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SHRINE"),
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                semanticLabel: "menu",
              ),
              onPressed: () {
                print("Menu button");
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  semanticLabel: "search",
                ),
                onPressed: () {
                  print("Search button");
                }),
            IconButton(
                icon: Icon(
                  Icons.tune,
                  semanticLabel: "filter",
                ),
                onPressed: () {
                  print("Filter button");
                })
          ],
        ),
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            children: buildGridCards(context)),
      ),
    );
  }
}
