import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:open_market_project/module/main/ads/ads_controller.dart';
import 'package:open_market_project/module/main/layout/layout_controller.dart';
import 'package:open_market_project/module/main/settings/module/change_pass/change_password_controller.dart';
import 'package:open_market_project/module/main/settings/settings_controller.dart';
import 'package:open_market_project/module/search/filter/filter_controller.dart';
import 'package:open_market_project/module/sign_in/forget_pass/forget_password_controller.dart';
import '../../module/advertiser/advertiser_controller.dart';
import '../../module/lang/lang_controller.dart';
import '../../module/main/chat/chat_controller.dart';
import '../../module/profile/modules/edit_profile_controller.dart';
import '../../module/profile/profile_controller.dart';
import '../../module/search/details_product/details_screen_controller.dart';
import '../../module/search/search_controller.dart';
import '../../module/sign_in/sign_in_controller.dart';
import '../../module/sign_up/sign_up_controller.dart';
import '../../module/splash/splash_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(), fenix: true);
    Get.lazyPut(() => LangController(), fenix: true);
    Get.lazyPut(() => SignInController(), fenix: true);
    Get.lazyPut(() => forgetPassController(), fenix: true);
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => LayoutController(), fenix: true);
    Get.lazyPut(() => AdsConttroller(), fenix: true);
    Get.lazyPut(() => SearchController(), fenix: true);
    Get.lazyPut(() => FilterConttroller(), fenix: true);
    Get.lazyPut(() => DetailsProducController(), fenix: true);
    Get.lazyPut(() => AdvertiserController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => EditProfileController(), fenix: true);
    Get.lazyPut(() => ChatController(), fenix: true);
    Get.lazyPut(() => SettingsController(), fenix: true);
    Get.lazyPut(() => ChangePassController(), fenix: true);

  }
}