import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_text_styles.dart';
import '../../../config/constants/assets.dart';
import '../../../config/constants/local_data.dart';
import '../../components/food_item_list_tile.dart';
import '../../components/food_section_sliver_appbar.dart';
import '../../components/food_sections_appbar.dart';
import 'page12/view/food_about_message.dart';

class FoodItemsPage extends StatefulWidget {
  const FoodItemsPage({super.key});

  @override
  State<FoodItemsPage> createState() => _FoodItemsPageState();
}

class _FoodItemsPageState extends State<FoodItemsPage> {
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
        )),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child: FoodSectionsAppBar(
                chairNumber: 17,
                clientName: "Jakhongir Sagatov",
                bookingNumber: 1008,
                bookingTime: "Vaqt: 13:31:59 (09/02/2022)",
              ),
            ),
            const FoodSectionSliverAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Text(
                  "Milliy taomlar",
                  style: AppTextStyles.body14w5,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: foodSectionsList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return FoodItemListTile(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: AppColors.green.withOpacity(.37),
                        builder: (context) => const FoodAboutMessage(),
                      );
                    },
                    trailing: index.isEven
                        ? SvgPicture.asset(
                            Assets.icons.star,
                            color: AppColors.green.withOpacity(.7),
                          )
                        : null,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 12.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
