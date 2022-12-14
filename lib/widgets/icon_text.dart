import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconText extends StatelessWidget {
  late final IconData icon;
  late final String text;

  IconText({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}
