import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/Helper/string_helper.dart';
import 'package:open_market_project/module/main/ads/ads_screen.dart';
import 'package:open_market_project/module/main/chat/chat_screen.dart';
import 'package:open_market_project/module/main/home/home_screen.dart';
import 'package:open_market_project/module/main/notification/notification_screen.dart';
import 'package:open_market_project/module/main/settings/settings_screen.dart';

class LayoutController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
  }

  //bool islaod = true;

  List<Widget> secreens = [
    HomeScreen(),
    ChatScreen(),
    AdsScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    'Home',
    'Caht',
    'Add Ads',
    'Notification',
    'Settings',
  ];

  List<BottomNavigationBarItem> bottomNavIcon = [
    BottomNavigationBarItem(
      label: StringManager.homeBottmNavTitel,
      icon: SvgPicture.asset(ImageManager.unactiveHomeIcon),
      activeIcon: SvgPicture.asset(ImageManager.activeHomeIcon)
    ),
    BottomNavigationBarItem(
      label: StringManager.chatBottmNavTitel,
      icon: SvgPicture.asset(ImageManager.unactiveChatIcon),
      activeIcon: SvgPicture.asset(ImageManager.commentIcon)
    ),
    BottomNavigationBarItem(
      label: StringManager.adsBottmNavTitel,
      icon: Icon(Icons.add,color: Colors.white, )
    ),
    BottomNavigationBarItem(
    label: StringManager.notificationBottmNavTitel,
    icon: SvgPicture.asset(ImageManager.unactiveNotIcon),
    activeIcon: SvgPicture.asset(ImageManager.activeNotIcon),
    ),
    BottomNavigationBarItem(
    label: StringManager.settingsBottmNavTitel,
    icon: SvgPicture.asset(ImageManager.unactiveSettingstIcon),
    activeIcon: SvgPicture.asset(ImageManager.settingIcon)
    ),
  ];
  int currantScreenIndex = 0;

  void changeBottomNavigationBar(int index, context) {
    currantScreenIndex = index;
    update();
  }

}