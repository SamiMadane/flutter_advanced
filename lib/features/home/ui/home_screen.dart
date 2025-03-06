import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resources/colors_manager.dart';
import 'package:flutter_advance/core/resources/fonts_manager.dart';
import 'package:flutter_advance/core/resources/styles_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Text('Home Screen')
      ],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('HOME SCREEN !!!',style: getBoldTextStyle(fontSize: FontSizeManager.s24, color: ColorsManager.darkBlue),),
        ],
      )
    );
  }
}
