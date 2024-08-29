import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/cart_screen.dart';
import 'package:getdemo/home_screen.dart';
import 'package:getdemo/order_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () =>const HomeScreen()),
        GetPage(name: "/cart", page: () =>const CartScreen()),
        GetPage(name: "/order", page: () => const OrderScreen()),
      ],


    );
  }
}

