import 'package:flutter/material.dart';
import 'package:list_view/products.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add('Laptop');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: Text('Long List App')),
            body: Column(children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      splashColor: Colors.blueGrey,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _products.add('Laptop');
                        });
                      },
                      child: Text('MacBook'))),
              Expanded(child: Products(_products))
            ])));
  }
}



