import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/widgets/customAppBar.dart';
import '../../../search/details_product/details_product_screen.dart';

class MyAddsScreen extends StatelessWidget {
  const MyAddsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('My Adds', context, ColorManager.primaryBlue),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _buildContainer(
                      colorbg: ColorManager.primaryBlue,
                      height: 35,
                      width: 140,
                      child: Center(
                        child: Text(
                          'Active Ads',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      )
                  ),
                ),
                SizedBox(width: 15.w,),
                Expanded(
                  child: _buildContainer(
                      height: 35,
                      width: 140,
                      colorbg: ColorManager.white,
                      child: Center(
                        child: Text(
                          'Inactive Ads',
                          style: TextStyle(fontSize: 15, color: ColorManager.grayContainer),
                        ),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index)=>GestureDetector(
                      onTap: (){
                        Get.to(DetailsProductScreen());
                      },
                      child: _buildListItem()
                  ),
                  separatorBuilder: (context,index)=>SizedBox(height: 5,),
                  itemCount: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildListItem() {
    return Container(
      height: 200,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorManager.grayContainer, width: 0.1)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 145.w,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.hgmsites.net/sml/2021-chevrolet-corvette_100772231_s.jpg',
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.favorite,
                        color: ColorManager.greyBorder,
                        size: 20,
                      ),
                    ),
                    radius: 20.r,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Living Room Sofa',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10.r,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Shimaa Zakarya',
                        style: _stylesubTitle(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: ColorManager.grayContainer, width: 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Baghdad',
                            style: _styletextWrap(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: ColorManager.grayContainer, width: 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Baghdad',
                            style: _styletextWrap(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: ColorManager.grayContainer, width: 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Baghdad',
                            style: _styletextWrap(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: ColorManager.grayContainer, width: 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Baghdad',
                            style: _styletextWrap(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: ColorManager.grayContainer, width: 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Baghdad',
                            style: _styletextWrap(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    width: 180.w,
                    child: Text(
                      '30 \$',
                      textWidthBasis: TextWidthBasis.parent,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: ColorManager.primaryOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    _buildContainer(
                        height: 31,
                        width: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icon/chat.svg'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Chat',
                              style:
                              TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        )
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.comment_bank,
                      size: 10,
                      color: ColorManager.grayContainer,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '120',
                      style: TextStyle(
                          color: ColorManager.grayContainer, fontSize: 10),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.remove_red_eye,
                        size: 10, color: ColorManager.grayContainer),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '20k',
                      style: TextStyle(
                          color: ColorManager.grayContainer, fontSize: 10),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContainer({
    required double height,
    required double width,
    required Widget child,
    Color? colorbg
  }) {
    return Container(
        height: height,
        width: width,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: colorbg,
            borderRadius: BorderRadius.circular(18),
            ),
        child: child);
  }
  TextStyle _stylesubTitle (){
    return TextStyle(fontSize: 14,color: ColorManager.greyBorder);
  }

  TextStyle _styletextWrap (){
    return TextStyle(fontSize: 11,color: ColorManager.greyBorder);
  }
}
