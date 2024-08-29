import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          "Home screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {
                  Get.defaultDialog();
                },
                child: Text(
                  "Alart dilog",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {
                  // Get.toNamed("cart");
                  Get.to(const CartScreen());
                },
                child: Text(
                  "Route",
                  style: TextStyle(color: Colors.white),
                )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            //     onPressed: () {
            //       Get.bottomSheet(
            //           Container(
            //         child: Wrap(
            //           children: [
            //             ListTile(
            //             title: Text("Light theme"),
            //             leading: Icon(Icons.sunny),
            //             onTap: () => {
            //               Get.changeTheme(ThemeData.light())
            //             },
            //           ),
            //             ListTile(
            //               title: Text("Dark theme"),
            //               leading: Icon(Icons.mood),
            //               onTap: () => {
            //
            //                 Get.changeTheme(ThemeData.dark()),
            //               },
            //             ),
            //           ],
            //         ),
            //       ));
            //     },
            //     child: const Text(
            //       "Bottom bar",
            //       style: TextStyle(color: Colors.white),
            //     )),
          ],
        ),
      ),
    );
  }
}
