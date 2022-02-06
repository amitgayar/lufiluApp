import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lufilu/home_bloc/bloc/home_bloc.dart';
import 'package:lufilu/utils/util_functions.dart';
import 'package:lufilu/widgets/my_bottom_bar.dart';
import 'package:lufilu/widgets/my_top_bar.dart';

import 'app_constants/my_theme.dart';



void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    log.v("building.. MyApp");

    return MultiBlocProvider(providers: [
      BlocProvider<HomeBloc>(create: (BuildContext context) => HomeBloc())
    ],
      child:  MaterialApp(
        theme: darkTheme,
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // ),
        // themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        title: 'LUFILU',
        home: const BaseStructure(),
      ),
    );
  }
}

class BaseStructure extends StatelessWidget {
  const BaseStructure({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    log.v("building.. BaseStructure");

    var _selectedScreen = context.select((HomeBloc value) => value.state.selectedScreen);
    bool isMobile;
    try{
      if(Platform.isAndroid||Platform.isIOS) {
        isMobile=true;
      } else {
        isMobile=false;
      }
    } catch(e){
      isMobile=false;
    }
    return
      Scaffold(
          appBar: !(isMobile) ?
              myTopBar(context)
              :PreferredSize(
                  preferredSize: const Size.fromHeight(0.0),
                 child: Container()),
          body:  selectScreen(context, _selectedScreen!),
        bottomNavigationBar: isMobile ?
        const MyBottomBar():
            Container()

    );
  }
}

