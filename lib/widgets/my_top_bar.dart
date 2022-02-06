import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lufilu/pages/cart_page.dart';
import 'package:lufilu/utils/util_functions.dart';

import 'my_logo.dart';

  myTopBar(context) => PreferredSize(
    preferredSize: const Size.fromHeight(100.0),
    child: Container(
        padding: const EdgeInsets.all(32),
        decoration:   const BoxDecoration(
            // color: ytBlackAppBar
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            const MyLogo(),
            const Icon(CupertinoIcons.location),
            const Icon(CupertinoIcons.search),
            const SizedBox(
                width: 300,
                child: TextField()),
            const Icon(CupertinoIcons.person),
            const Icon(CupertinoIcons.globe),
            IconButton(icon: const Icon(CupertinoIcons.shopping_cart), onPressed: () {
              log.w("button CupertinoIcons.globe");
              Navigator.push(context, PageRouteBuilder(pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                return const CartPage();
              }));
            },),
          ],
        )
    ));


