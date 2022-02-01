import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lufilu/home_bloc/bloc/home_bloc.dart';
import 'package:lufilu/pages/cart_page.dart';
import 'package:lufilu/pages/home_page.dart';
import 'package:lufilu/pages/settings_page.dart';
import 'package:lufilu/utils/util_functions.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<HomeBloc>(create: (BuildContext context) => HomeBloc())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LUFILU',
        theme: ThemeData(
          primarySwatch: Colors.brown,
            primaryColor: Colors.red,
            primaryColorBrightness: Brightness.dark
        ),
        home: const BaseStructure(),
      ),
    );
  }
}

class BaseStructure extends StatelessWidget {
  const BaseStructure({Key? key}) : super(key: key);


  Widget _selectScreen(context, int v){
    switch (v) {
      case 0:
        return const HomePage();
      case 1:
        return const CartPage();
      case 2:
        return const SettingsPage();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    var _selectedScreen = context.select((HomeBloc value) => value.state.selectedScreen);
    bool kisweb;
    try{
      if(Platform.isAndroid||Platform.isIOS) {
        kisweb=true;
      } else {
        kisweb=false;
      }
    } catch(e){
      kisweb=false;
    }
    return
      Scaffold(
          appBar: !(kisweb) ?PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: Container(
                decoration:   BoxDecoration(
                color: Colors.red[300]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/lufilu.jpg'),
                    Row(
                      children: const [
                        Text('NCR'),
                        Icon(CupertinoIcons.location)
                      ],
                    ),
                    Row(
                      children:  const [
                        Icon(CupertinoIcons.search),
                        SizedBox(
                          width: 300,
                            child: TextField())
                      ],
                    ),
                    const Icon(CupertinoIcons.person),
                    const Icon(CupertinoIcons.shopping_cart),
                    const Text('A/H'),
                  ],
                )
            )):PreferredSize(
                  preferredSize: const Size.fromHeight(0.0),
                 child: Container()),
          body:  _selectScreen(context, _selectedScreen!),


        bottomNavigationBar: kisweb ?BottomNavigationBar(
          backgroundColor: Colors.brown[300],
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
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top:16.0),
                  child: Icon(CupertinoIcons.person),
                ),
                label: '',
                tooltip: 'Profile'
            ),
            ],
            // currentIndex: _selectedIndex,
            currentIndex: _selectedScreen,
            // selectedItemColor: Colors.amber[800],
            // onTap: _onItemTapped,
            onTap: (index) {
              context.read<HomeBloc>().add(SelectScreenEvent(selectedScreen: index));
            },
          ):
            Container()

    );
  }
}

