import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;

  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.sections,  this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //print(constraints.constrainWidth());
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => Text(
              "-",
              style: TextStyle(
                  color: isColor == null ? Colors.white : Colors.grey.shade200),
            ),
          ),
        );
      },
    );
  }
}
