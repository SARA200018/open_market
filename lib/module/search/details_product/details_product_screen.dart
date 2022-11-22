import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:open_market_project/Helper/color_helper.dart';
import 'package:open_market_project/Helper/image_helper.dart';
import 'package:open_market_project/module/search/details_product/details_screen_controller.dart';
import 'package:open_market_project/widgets/components/components.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsProductScreen extends StatelessWidget {
   DetailsProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<DetailsProducController>(
        builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primaryBlue,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.flag,
                  size: 18,
                ))
          ],
        ),
        body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: ColorManager.primaryBlue,
                  ),
                  child: buildHeader(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        '20\$',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.primaryBlue),
                      ),
                      Spacer(),
                      D_MaterialButton(
                          onPressed: () {},
                          elevation: 2,
                          color: Colors.white,
                          colorBorder: Colors.white,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Opacity(
                                  opacity: 0.5,
                                  child: Icon(
                                    Icons.notifications,
                                    color: ColorManager.primaryBlue,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Tell me price drops',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorManager.primaryBlue)),
                            ],
                          ),
                          width: 200.w),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 0.5, color: ColorManager.greyBorder)),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: ColorManager.primaryOrange,
                          borderRadius: BorderRadius.circular(20)),
                      indicatorColor: ColorManager.morelightGrey,
                      automaticIndicatorColorAdjustment: false,
                      labelColor: Colors.white,
                      unselectedLabelColor: ColorManager.primaryOrange,
                      tabs: [
                        Tab(
                          child:
                              Text('Details', style: TextStyle(fontSize: 18)),
                        ),
                        Tab(
                          child: Text(
                            'Review',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TabBarView(children: [
                      buildDetailsPart(),
                      buildReviewPart(controller),
                    ]),
                  ),
                )
              ],

        ))));
  }

  Widget buildHeader() {
    return Column(
      children: [
        Text(
          'Peugeot model 2020',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    height: 150.h,
                    width: double.infinity,
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          Center(child: buildSliderItem(imageSlider)),
                      itemCount: 2,
                      controller: pageViewController,
                    ),
                  ),
                  Positioned(bottom: 2, child: smoothIndicatorItem()),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Container(
                      height: 40.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: ColorManager.primaryOrange,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icon/chat.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      )),
                  Spacer(),
                  SvgPicture.asset(
                    ImageManager.commentIcon,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '120',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.remove_red_eye, size: 20, color: Colors.white54),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '20k',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildDetailsPart() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsetsDirectional.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'More',
            trimExpandedText: 'Less',
            moreStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: ColorManager.primaryOrange),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
              width: 86.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorManager.primaryOrange)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                    child: Text(
                  'New',
                  style: TextStyle(
                      color: ColorManager.primaryOrange, fontSize: 14),
                )),
              )),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shimaa Zakarya',
                    style: TextStyle(
                        fontSize: 18, color: ColorManager.primaryBlue),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImageManager.expressIcon),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Within Seconds',
                        style: TextStyle(
                            fontSize: 14, color: ColorManager.grayContainer),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(ImageManager.faceIcon),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(ImageManager.letterIcon),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(ImageManager.whatsapIcon),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Member Since 3/1/2020',
                    style: TextStyle(
                        fontSize: 11, color: ColorManager.primaryBlue),
                  )
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    '11 Ads',
                    style: TextStyle(
                        color: ColorManager.grayContainer, fontSize: 15),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                'Similar ads :',
                style: TextStyle(fontSize: 18, color: ColorManager.primaryBlue),
              ),
              Spacer(),
              Container(
                  width: 86.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: ColorManager.primaryOrange)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                        child: Text(
                      'More',
                      style: TextStyle(
                          color: ColorManager.primaryOrange, fontSize: 14),
                    )),
                  )),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            height: 150.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => buildListItem(),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10.w,
                    ),
                itemCount: 20),
          )
        ],
      ),
    );
  }

  Widget buildListReview() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Shimaa Zakarya',
                    style: TextStyle(
                        fontSize: 18, color: ColorManager.primaryBlue),
                  ),
                  Spacer(),
                  Text(
                    '1/2/2022',
                    style: TextStyle(
                        color: ColorManager.grayContainer, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Contrary to popular belief, Lorem Ipsum is nghh  literatu from 45 BC, making',
                style: TextStyle(
                  fontSize: 11,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildReviewPart(DetailsProducController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Previous comments :',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => buildListReview(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20.h,
                  ),
              itemCount: 8),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: textFormFailed(
        //       hintText: 'Write a comment',
        //       color: ColorManager.grey1,
        //       keyboardType: TextInputType.text,
        //       textEditingController: controller.commentController,
        //       validator: (value) {
        //         if (value!.isEmpty) {
        //           return 'must comment';
        //         }
        //       }),
        // ),
      ],
    );
  }

  Widget buildListItem() {
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
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
        SizedBox(
          height: 5.h,
        ),
        Text(
          'Living Room',
          style: TextStyle(fontSize: 12),
        ),
        Container(
            width: 100.w,
            child: Text(
              '30\$',
              textWidthBasis: TextWidthBasis.parent,
              textAlign: TextAlign.end,
              style: TextStyle(color: ColorManager.primaryOrange),
            ))
      ],
    );
  }

  List<String> imageSlider = [
    'https://images.hgmsites.net/sml/2021-chevrolet-corvette_100772231_s.jpg',
    'https://images.hgmsites.net/sml/2021-chevrolet-corvette_100772231_s.jpg'
  ];

  Widget buildSliderItem(List<String> imageSlider) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(
                  'https://m.atcdn.co.uk/vms/media/w980/4b5770f73f274430aa20ee1e0aa89997.jpg',
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
    );
  }

  var pageViewController = PageController();

  Widget smoothIndicatorItem() => SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          dotColor: Colors.grey,
          dotHeight: 5,
          dotWidth: 10,
          spacing: 5,
          expansionFactor: 2,
          activeDotColor: Colors.white,
        ),
        count: 2,
        controller: pageViewController,
      );
}
