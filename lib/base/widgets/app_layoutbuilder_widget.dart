import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  
  const AppLayoutBuilderWidget({super.key, required this.randomDivider, this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      // print("${constraints.constrainWidth()}"); //Space between two widgets which are BigDots
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate((constraints.constrainWidth()/randomDivider).floor(), (index) => SizedBox(
          width: width, height: 1, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
        )),

        //length : constraints.constrainWidth()/randomDivider).floor() - tells how many widgets are we generating

      );
    });
  }
}
