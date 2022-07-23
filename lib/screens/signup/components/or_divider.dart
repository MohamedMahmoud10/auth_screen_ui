import 'package:flutter/material.dart';

import '../../../constans.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: [
          buildExpanded(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          buildExpanded()
        ],
      ),
    );
  }

  Expanded buildExpanded() {
    return const Expanded(
      child: Divider(
        height: 1.5,
        color: Color(0xFFD9D909),
      ),
    );
  }
}
