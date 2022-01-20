import 'package:flutter/material.dart';
import 'package:my_flutter_app1/pages/cart_page.dart';
import 'package:my_flutter_app1/pages/home_page.dart';
import 'package:my_flutter_app1/pages/login_page.dart';
import 'package:my_flutter_app1/utils/routes.dart';
import 'package:my_flutter_app1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => cartPage(),
      },
    );
  }
}
