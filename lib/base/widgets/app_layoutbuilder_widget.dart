import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool? isColor;
  
  const AppLayoutBuilderWidget({super.key, required this.randomDivider, this.width=3, this.isColor}); //required has to be passed. If we don't want required assign an default value.

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      // print("${constraints.constrainWidth()}"); //Space between two widgets which are BigDots
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate((constraints.constrainWidth()/randomDivider).floor(), (index) => SizedBox( // how many widgets to be generated and then generating it's interface using SizedBox.
          width: width, height: 1, child: DecoratedBox(decoration: BoxDecoration(color: isColor==null? Colors.white : Colors.grey.shade300)),
        )),

        //length : constraints.constrainWidth()/randomDivider).floor() - tells how many widgets are we generating

      );
    });
  }
}
