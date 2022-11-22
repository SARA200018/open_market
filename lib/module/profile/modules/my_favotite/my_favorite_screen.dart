import 'package:flutter/material.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/widgets/customAppBar.dart';

class MyFavoriteScreen extends StatelessWidget {
  const MyFavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('My Favorite', context, ColorManager.primaryBlue),
    );
  }
}
