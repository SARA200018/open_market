import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_market_project/Helper/string_helper.dart';
import 'package:open_market_project/widgets/customAppBar.dart';

import '../../../../Helper/color_helper.dart';
import '../../../../Helper/image_helper.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppBar('About Us', context, ColorManager.primaryBlue),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('${ImageManager.headImage}')
                  )
              ),
            ),
            SizedBox(height: 20.h,),
            Text('About Us',style: TextStyle(
                color: ColorManager.primaryOrange,
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10.h,),
            Text(StringManager.text1AboutUs,style: TextStyle(),),
            SizedBox(height: 10.h,),
            Text(StringManager.text2AboutUs,style: TextStyle(),)
          ],
        ),
      ),
    );
  }
}
