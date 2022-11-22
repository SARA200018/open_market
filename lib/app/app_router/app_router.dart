import 'package:get/get.dart';
import 'package:open_market_project/module/advertiser/advertiser_screen.dart';
import 'package:open_market_project/module/lang/lang_screen.dart';
import 'package:open_market_project/module/main/chat/in_chat/in_chat_screen.dart';
import 'package:open_market_project/module/main/settings/module/change_pass/change_password_screen.dart';
import 'package:open_market_project/module/main/settings/module/privacy_policy/privacy_policy_screen.dart';
import 'package:open_market_project/module/main/settings/module/term_use/term_use_screen.dart';
import 'package:open_market_project/module/profile/modules/FQA/FQA_screen.dart';
import 'package:open_market_project/module/profile/modules/about_us/about_us_screen.dart';
import 'package:open_market_project/module/profile/modules/my_adds/my_adds_screen.dart';
import 'package:open_market_project/module/profile/modules/my_favotite/my_favorite_screen.dart';
import 'package:open_market_project/module/search/details_product/details_product_screen.dart';
import 'package:open_market_project/module/search/filter/filter_screen.dart';
import 'package:open_market_project/module/sign_in/forget_pass/forget_password_screen.dart';

import '../../module/main/layout/layout_screen.dart';
import '../../module/main/settings/module/block_account/block_account_screen.dart';
import '../../module/on_boarding/on_boarding_screen.dart';
import '../../module/profile/modules/contact_us/contact_us_screen.dart';
import '../../module/profile/modules/edit_profile_screen.dart';
import '../../module/profile/profile_screen.dart';
import '../../module/search/search_screen.dart';
import '../../module/sign_in/sign_in_screen.dart';
import '../../module/sign_up/sign_up_screen.dart';
import '../../module/splash/splash_screen.dart';


class Routes {
   static const String splashRoute = '/';
   static const String langRoute = '/LangScreen';
   static const String boardRoute = '/onBoard';
   static const String signInRoute = '/signIn';
   static const String signUpRoute = '/signUp';
   static const String forgetPassRoute = '/forgetPass';
   static const String layoutRoute = '/layout';
   static const String searchRoute = '/search';
   static const String filterRoute = '/search/filter';
   static const String inChatScreenRoute = '/chat/InChatScreen';
   static const String detailsProductRoute = '/detailsProduct';
   static const String advertiserRoute = '/advertiser';
   static const String profileRoute = '/profile';
   static const String editProfileRoute = '/editProfile';
   static const String myAddsRoute = '/profile/myAdds';
   static const String myFavoriteRoute = '/profile/myFav';
   static const String contactusRoute = '/profile/contactus';
   static const String FAQRoute = '/profile/FAQ';
   static const String aboutUsRoute = '/profile/AboutUs';
   static const String changePassRoute = '/settings/changePass';
   static const String blockAccountRoute = '/settings/blockAccount';
   static const String termOfUseRoute = '/settings/termOfUse';
   static const String privacypolicyRoute = '/settings/privacypolicy';
}

List<GetPage<dynamic>> appRoutes = [
  GetPage(
    name: Routes.splashRoute,
    page: () =>  SplashScreen(),
    transition: Transition.fade,
    transitionDuration: Duration(seconds: 1),
  ),
  GetPage(
    name: Routes.langRoute,
    page: () =>  LangScreen(),
  ),
  GetPage(
    name: Routes.boardRoute,
    page: () => onBoardScreen(),
  ),
  GetPage(
    name: Routes.signInRoute,
    page: () => SignInScreen(),
  ),
  GetPage(
    name: Routes.signUpRoute,
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: Routes.forgetPassRoute,
    page: () => ForgetPasswordScreen(),
  ),
  GetPage(
    name: Routes.layoutRoute,
    page: () => LayoutScreen(),
  ),
  GetPage(
    name: Routes.inChatScreenRoute,
    page: () => InChatScreen(),
  ),
  GetPage(
    name: Routes.searchRoute,
    page: () => SearchScreen(),
  ),
  GetPage(
    name: Routes.filterRoute,
    page: () => FilterScreen(),
  ),
  GetPage(
    name: Routes.detailsProductRoute,
    page: () => DetailsProductScreen(),
  ),
  GetPage(
    name: Routes.advertiserRoute,
    page: () => AdvertiserScreen(),
  ),
  GetPage(
    name: Routes.profileRoute,
    page: () => ProfileScreen(),
  ),
  GetPage(
    name: Routes.editProfileRoute,
    page: () => EditProfileScreen(),
  ),
  GetPage(
    name: Routes.myAddsRoute,
    page: () => MyAddsScreen(),
  ),
  GetPage(
    name: Routes.myFavoriteRoute,
    page: () => MyFavoriteScreen(),
  ),
  GetPage(
    name: Routes.contactusRoute,
    page: () => ContactUsScreen(),
  ),
  GetPage(
    name: Routes.FAQRoute,
    page: () => FQAScreen(),
  ),
  GetPage(
    name: Routes.aboutUsRoute,
    page: () => AboutUsScreen(),
  ),
  GetPage(
    name: Routes.changePassRoute,
    page: () => ChangePasswordScreen(),
  ),
  GetPage(
    name: Routes.blockAccountRoute,
    page: () => BlockAccountScreen(),
  ),
  GetPage(
    name: Routes.termOfUseRoute,
    page: () => TermOfUseScreen(),
  ),
  GetPage(
    name: Routes.privacypolicyRoute,
    page: () => PrivacyPolicyScreen(),
  ),

];