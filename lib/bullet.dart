import 'package:flutter/material.dart';

  class Bullet extends StatelessWidget{
  const Bullet({super.key});
    @override
    Widget build(BuildContext context){
      return Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
      );
    }
  }