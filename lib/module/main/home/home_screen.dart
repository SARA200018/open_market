import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/image_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 200.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('${ImageManager.headImage}')
            )
          ),
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            childAspectRatio: 100.w / 120.h,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            padding: EdgeInsetsDirectional.all(10),
            children: List.generate(30, (index) {
              return _gridItem();
            }),
          ),
        ],
      ),
    );
  }
  Widget _gridItem(){
    return Material(
      elevation: 1,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: ColorManager.lightGrey,
      borderRadius: BorderRadius.circular(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35.r,
              backgroundColor: Colors.white,
              child: Icon(Icons.car_crash,color: ColorManager.primaryOrange,),
            ),
            SizedBox(height: 10,),
            Text('car',style: _textCard(),)
          ],
        ),

    );
  }
  TextStyle _textCard(){
    return TextStyle(fontSize: 15,color: ColorManager.primaryBlue);
  }
}
