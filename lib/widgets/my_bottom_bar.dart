import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lufilu/home_bloc/bloc/home_bloc.dart';
import 'package:lufilu/pages/cart_page.dart';
import 'package:lufilu/pages/home_page.dart';
import 'package:lufilu/pages/settings_page.dart';
import 'package:lufilu/utils/util_functions.dart';
import 'package:provider/provider.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _selectedScreen = context.select((HomeBloc value) => value.state.selectedScreen);

    return BottomNavigationBar(
      // backgroundColor: ytBlackAppBar,
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
      currentIndex: _selectedScreen!,
      // selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
      onTap: (index) {
        context.read<HomeBloc>().add(SelectScreenEvent(selectedScreen: index));
      },
    );
  }
}

Widget selectScreen(context, int v){
  log.w("selectScreen = $v");
  switch (v) {
    case 0:
      return  const HomePage();
    case 1:
      return const CartPage();
    case 2:
      return const SettingsPage();
    default:
      return Container();
  }
}
