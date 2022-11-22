import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_market_project/widgets/customAppBar.dart';
import 'layout_controller.dart';


class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<LayoutController>(
          builder: (controller) => Scaffold(
            backgroundColor: Colors.white,
            appBar: CustomAppBar(controller.titles[controller.currantScreenIndex]),
            body: controller.secreens[controller.currantScreenIndex],
            bottomNavigationBar: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12)
                )
              ),
              child: BottomNavigationBar(
                iconSize: 30,
                items: controller.bottomNavIcon,
                onTap: (value) =>
                controller.changeBottomNavigationBar(value, context),
                currentIndex: controller.currantScreenIndex,
              ),
            ),
          ),
        ),
    );
  }
}