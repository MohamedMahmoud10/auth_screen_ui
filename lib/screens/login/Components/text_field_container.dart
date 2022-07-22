import 'package:flutter/material.dart';

import '../../../constans.dart';

class TextFieldContiner extends StatelessWidget {
  final Widget child;

  const TextFieldContiner({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29), color: kPrimaryLightColor),
      child: child,
    );
  }
}
