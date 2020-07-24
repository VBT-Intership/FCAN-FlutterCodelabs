import 'package:flutter/material.dart';
import 'package:flutterCodelabs/components/asymmetric/asymmetric.dart';

import 'package:flutterCodelabs/model/products.dart';
import 'package:flutterCodelabs/model/products_repository.dart';

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
          brightness: Brightness.dark,
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
                }),
          ],
        ),
        body: AsymmetricView(
            products: ProductsRepository.loadProducts(Category.all)),
      ),
    );
  }
}
