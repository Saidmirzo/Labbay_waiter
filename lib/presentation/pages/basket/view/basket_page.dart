import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_waiter/config/constants/app_colors.dart';
import 'package:labbay_waiter/config/constants/app_text_styles.dart';
import 'package:labbay_waiter/config/constants/assets.dart';
import 'package:labbay_waiter/config/constants/local_data.dart';
import 'package:labbay_waiter/presentation/components/food_item_list_tile.dart';
import 'package:labbay_waiter/presentation/pages/basket/components/addition_cost_dialog.dart';
import 'package:labbay_waiter/presentation/pages/food_items/page12/components/custom_confirmation_page.dart';

import '../../../components/food_sections_appbar.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 54.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.regBg,
                ),
              ),
              color: AppColors.basketBgColor,
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 17.w, right: 17.w, bottom: 160.h),
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: const FoodSectionsAppBar(
                    chairNumber: 17,
                    clientName: "Jakhongir Sagatov",
                    bookingNumber: 1008,
                    bookingTime: "Vaqt: 13:31:59 (09/02/2022)",
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.r),
                      topRight: Radius.circular(18.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadowColor2,
                        blurRadius: 50,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.icons.shoppingCart,
                            height: 16.h,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(width: 9.w),
                          Text('Savatcha', style: AppTextStyles.body14w5)
                        ],
                      ),
                      ...List.generate(
                        listBasketItems.length,
                        (index) => Column(
                          children: [
                            SizedBox(height: 12.h),
                            Stack(
                              children: [
                                Positioned(
                                  right: 20.w,
                                  child: Container(
                                    height: 87.h,
                                    width: 100.w,
                                    color: AppColors.messageButtonBg,
                                  ),
                                ),
                                Slidable(
                                  key: GlobalKey(),
                                  endActionPane: ActionPane(
                                    motion: const ScrollMotion(),
                                    extentRatio: .2,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            listBasketItems.removeAt(index);
                                          });
                                          Slidable.of(context)?.close();
                                        },
                                        child: Container(
                                          height: 87.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                            color: AppColors.red,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(22.r),
                                              bottomRight:
                                                  Radius.circular(22.r),
                                            ),
                                          ),
                                          child: SvgPicture.asset(
                                            Assets.icons.delete,
                                            height: 24.h,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: FoodItemListTile(
                                    onTap: () {},
                                    trailing: Text(
                                      'x2',
                                      style: AppTextStyles.body16w5.copyWith(
                                        color: AppColors.buttonColor,
                                      ),
                                    ),
                                    title: listBasketItems[index].title,
                                    cost: listBasketItems[index].cost,
                                    path: listBasketItems[index].path,
                                    // isSlidabel: true,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: 32.r,
                    color: AppColors.accentColor,
                    child: Row(
                      children: List.generate(
                        340.w ~/ 14.w,
                        (index) => Container(
                          height: 1.2,
                          width: 8.w,
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          color: AppColors.dottedColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  padding: EdgeInsets.symmetric(horizontal: 27.w),
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18.r),
                      bottomRight: Radius.circular(18.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jami summa:',
                        style: AppTextStyles.body14w5.copyWith(
                          color: AppColors.buttonColor,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '58 000',
                          style: AppTextStyles.body24w6.copyWith(
                            color: AppColors.buttonColor,
                          ),
                          children: [
                            TextSpan(
                              text: " so'm",
                              style: AppTextStyles.body16w6.copyWith(
                                color: AppColors.buttonColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 97.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.basketBgColor.withOpacity(0),
                        AppColors.basketBgColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Container(
                  height: 130.h,
                  color: AppColors.accentColor,
                  padding: EdgeInsets.symmetric(horizontal: 17.w)
                      .copyWith(bottom: 30.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: listBasketItems.length > 4,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jami summa:',
                                style: AppTextStyles.body14w5.copyWith(
                                  color: AppColors.buttonColor,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '58 000',
                                  style: AppTextStyles.body24w6.copyWith(
                                    color: AppColors.buttonColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " so'm",
                                      style: AppTextStyles.body16w6.copyWith(
                                        color: AppColors.buttonColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomConfirmationButton(
                            text: 'Yuborish',
                            onTap: () {},
                            bgColor: AppColors.darkYellow,
                            textColor: AppColors.black,
                            size: Size(164.w, 57.h),
                          ),
                          SizedBox(width: 12.w),
                          CustomConfirmationButton(
                            text: 'Yakunlash',
                            onTap: () {
                              showDialog(
                                context: context,
                                barrierColor: AppColors.green.withOpacity(.4),
                                builder: (context) => BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                                  child: const Center(
                                    child: AdditionCostDialog(),
                                  ),
                                ),
                              );
                            },
                            bgColor: AppColors.red,
                            textColor: AppColors.accentColor,
                            size: Size(164.w, 57.h),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  double r = 32.r;
  double width = 345.w;
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..arcToPoint(Offset(0, size.height), radius: Radius.circular(r / 2))
      ..lineTo(size.width, size.height)
      ..arcToPoint(Offset(size.width, 0), radius: Radius.circular(r / 2))
      ..lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
