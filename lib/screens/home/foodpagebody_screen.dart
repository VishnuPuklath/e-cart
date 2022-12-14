import 'package:e_cart/widgets/icon_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.87);
  var currPageValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return _buildPageItem(index);
        }),
      ),
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food/food$index.jpg')),
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.green : Colors.red),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Container(
            padding: EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Chinese Side',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                        children: List.generate(
                      5,
                      (index) => const Icon(
                        Icons.star,
                        color: Colors.greenAccent,
                        size: 15,
                      ),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '4.5',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('1287 comments',
                        style: TextStyle(color: Colors.grey, fontSize: 13))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(icon: Icons.circle_sharp, text: 'Normal'),
                    IconText(icon: Icons.location_on, text: '1.7 km'),
                    IconText(icon: Icons.access_time, text: '32 min')
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
