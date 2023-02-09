import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/constants/app_text_styles.dart';
import '../../../config/constants/assets.dart';
import '../../../config/constants/local_data.dart';
import '../../components/custom_grid_item.dart';
import '../../components/food_section_sliver_appbar.dart';
import '../../components/food_sections_appbar.dart';
import '../../routes/routes.dart';

class FoodSectionsPage extends StatefulWidget {
  const FoodSectionsPage({super.key});

  @override
  State<FoodSectionsPage> createState() => _FoodSectionsPageState();
}

class _FoodSectionsPageState extends State<FoodSectionsPage> {
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
                  "Bo'limlar",
                  style: AppTextStyles.body14w5,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GridView.builder(
                itemCount: foodSectionsList.length,
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
                        Navigator.pushNamed(context, Routes.foodItemsPage),
                    image: foodSectionsList[index].imagePath,
                    title: foodSectionsList[index].sectionName,
                    subtitle: foodSectionsList[index].foodAmount,
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
