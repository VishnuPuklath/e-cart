import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  const Text(
                    'Bangalore',
                    style: TextStyle(fontSize: 20, color: Colors.greenAccent),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Niveus',
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  ),
                ]),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent,
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
