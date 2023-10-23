import 'package:flutter/material.dart';

class GridArea extends StatelessWidget 
{
  final Color? color;
  final int flex;
  final String text;

  const GridArea({super.key, required this.text, this.color, this.flex = 5});

  @override
  Widget build(BuildContext context)
  {
    return Expanded
    (
      flex: flex,

      child: Container
      (
        alignment: Alignment.center,
        color: color,
        child: Text(text, style: const TextStyle(fontSize: 22), maxLines: 1, overflow: TextOverflow.ellipsis,),
      )
    );
  }
}