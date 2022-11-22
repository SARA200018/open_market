import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/module/main/settings/settings_controller.dart';

import '../../../app/app_router/app_router.dart';

class SettingsScreen extends StatelessWidget {
   SettingsScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(builder:(controller)=> SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorManager.primaryBlue,
                      radius:30.r,
                      child: Icon(Icons.notifications,color: Colors.white,size: 28,),
                    ),
                    SizedBox(width: 20.w,),
                    Expanded(
                      child: Text(
                        'Notification',
                        style: TextStyle(
                            color: ColorManager.grayContainer,
                            fontSize: 20
                        ),
                      ),
                    ),
                    Switch(
                      value: controller.isSwitched,
                      onChanged: controller.onChanged,
                      activeTrackColor: ColorManager.green,
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildListSettings(controller,iconData: Icons.language,settings: 'Change Language',route: Routes.langRoute),
          buildListSettings(controller,iconData: Icons.lock,settings: 'Change Password',route: Routes.changePassRoute),
          buildListSettings(controller,iconData: Icons.person,settings: 'Blook People',route:Routes.blockAccountRoute),
          buildListSettings(controller,iconData: Icons.web_rounded,settings: 'Term Of Use',route:Routes.termOfUseRoute ),
          buildListSettings(controller,iconData: Icons.wysiwyg_rounded,settings: 'Privacy Policy',route: Routes.privacypolicyRoute),
        ],
      ),
    ));
  }

   Widget buildListSettings(
       SettingsController controller,
       {required IconData iconData,required String settings,required String route}) {
     return GestureDetector(
       onTap: (){
         Get.toNamed(route);
       },
       child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorManager.primaryBlue,
                    radius:30.r,
                    child: Icon(iconData,color: Colors.white,size: 28,),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                      child: Text(
                        '$settings',
                        style: TextStyle(
                            color: ColorManager.grayContainer,
                            fontSize: 20
                        ),
                      ),
                  ),
                  Icon(Icons.arrow_forward,color: ColorManager.primaryOrange,)

                ],
              ),
            ),
          ),
        ),
     );
   }
}
