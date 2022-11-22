import 'package:flutter/material.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/epand_helper/expand_helper.dart';
import 'package:open_market_project/widgets/customAppBar.dart';

class FQAScreen extends StatelessWidget {
  const FQAScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('FAQ', context, ColorManager.primaryBlue),
      body: ExpandList(),
    );
  }
}
