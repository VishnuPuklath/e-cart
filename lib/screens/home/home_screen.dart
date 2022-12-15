import 'package:e_cart/screens/home/foodpagebody_screen.dart';
import 'package:e_cart/widgets/homeappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('current screen height is' +
        MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(children: [
        HomeAppBar(),
        FoodPageBody(),
      ]),
    );
  }
}
