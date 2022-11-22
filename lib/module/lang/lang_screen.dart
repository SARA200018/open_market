import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:open_market_project/Helper/color_helper.dart';

import '../../Helper/image_helper.dart';
import '../on_boarding/on_boarding_screen.dart';
import 'lang_controller.dart';
import 'model/lang_model.dart';

class LangScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LangController>(
        builder: (controller) =>
            Scaffold(
              backgroundColor: ColorManager.primaryBlue,
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text('Choose Your Language',style:styleTitle() ,),
                              SizedBox(height: 10.h,),
                              Text('اختر اللغة المفضلة',style: styleTitle(),),
                              SizedBox(height: 20.h,),
                              GridView.count(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      mainAxisSpacing: 15,
                                      crossAxisSpacing: 15,
                                      crossAxisCount: 2,
                                      childAspectRatio: 182.w/280.h,
                                      children: List.generate(3, (index) {
                                    return gridItem(model[index]);

                                    }),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ));
  }

  TextStyle styleTitle(){
    return TextStyle(
        color: Colors.white,
        fontSize: 17
    );
}
  TextStyle styleTrans(){
    return TextStyle(
        color: Colors.white,
        fontSize: 15
    );
  }
  Widget gridItem(langModel model){
    return GestureDetector(
      onTap: (){
        Get.toNamed('/onBoard');
      },
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('${ImageManager.translateIcon}',height: 36.h,width: 36.w,color: Colors.white,),
              SizedBox(height: 10.h,),
              Expanded(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${model.firstTitle}',style: styleTitle(),),
                    SizedBox(height: 10.h,),
                    Text('${model.secondTitle}',style: styleTitle()),
                  ],
                ),
              ),

              Text('${model.lang}',style: styleTrans(),)
            ],
          ),
        ),
      ),
    );
  }
final List<langModel> model = [
  langModel('مرحبا بك', 'في السوق المفتوح', 'عربي'),
  langModel('Bi Xêr Hatî', 'Sûka Giştî', 'Kurdî'),
  langModel('Welcome', 'Public Market', 'English'),
];

}
