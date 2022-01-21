import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lufilu/utils/util_functions.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lufilu',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Lufilu'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;
  final _selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
      ListView(
        children: List.generate(30, (index) => Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: (
            Text("title - $index")
            ),
          ),
        )
        ),
      ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top:16.0),
                  child: Icon(CupertinoIcons.home),
                ),
                label: '',
                tooltip: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top:16.0),
                  child: Icon(CupertinoIcons.shopping_cart),
                ),
                label: '',
                tooltip: 'Cart'
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top:16.0),
                  child: Icon(CupertinoIcons.settings),
                ),
                label: '',
                tooltip: 'Settings'
            ),
          ],
          // currentIndex: _selectedIndex,
          currentIndex: _selectedScreen,
          // selectedItemColor: Colors.amber[800],
          // onTap: _onItemTapped,
          onTap: (index) {
            log.d("jajaj");
          },
        )

    );
  }
}
