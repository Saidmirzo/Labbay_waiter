import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_text_styles.dart';
import '../../../config/constants/assets.dart';
import '../../components/custom_grid_item.dart';
import '../../components/empty_bottom.dart';
import '../../routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = "Jakhongir\nSagatov";
  List<String> placeList = [
    "Barchasi",
    "Ayvon",
    "1-qavat",
    "2-qavat",
    "3-qavat",
  ];

  int selectedIndex = 0;

  void _selectedPlace(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 54.h, left: 30.w, right: 30.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.regBg),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style:
                        AppTextStyles.head32w8.copyWith(color: AppColors.green),
                  ),
                  Text(
                    "Hayrli kun! 👋🏻",
                    style:
                        AppTextStyles.body16w5.copyWith(color: AppColors.green),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 18.h),
            ),
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              backgroundColor: AppColors.accentColor,
              surfaceTintColor: AppColors.accentColor,
              elevation: 0,
              bottom: const EmptyBottom(),
              flexibleSpace: Container(
                height: 50.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.green.withOpacity(.1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(13.h),
                      child: SvgPicture.asset(Assets.icons.search),
                    ),
                    hintText: "Stol qidiruvi",
                    hintStyle: AppTextStyles.body12w5.copyWith(
                      color: AppColors.green.withOpacity(.4),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 23.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 18.h),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: placeList.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => _selectedPlace(index),
                      child: Text(
                        placeList[index],
                        style: AppTextStyles.body14w5.copyWith(
                          color: selectedIndex != index
                              ? AppColors.unselectedText
                              : null,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 24.w);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GridView.builder(
                itemCount: 16,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 151 / 178,
                  mainAxisSpacing: 12.w,
                  crossAxisSpacing: 12.h,
                ),
                itemBuilder: (context, index) {
                  return CustomGridItem(
                    onTap: () =>
                        Navigator.pushNamed(context, Routes.foodSectionsPage),
                    image: Assets.images.chairs,
                    title: "${index + 1}-stol",
                    subtitle: index == 0
                        ? "Farhod"
                        : index == 2
                            ? "Jakhongir"
                            : "Bo'sh",
                    booked: index == 0 || index == 2,
                    blocked: index == 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
