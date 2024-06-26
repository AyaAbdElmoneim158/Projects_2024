import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/circle_container.dart';
import 'package:flutlab_projects_2024/common/widgets/images/t_rounded_image.dart';
import 'package:flutlab_projects_2024/features/shop/controllers/home_controller.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, _) => controller.updatePageIndicator(index),
        ),
        items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
      ),
      const SizedBox(height: TSizes.spaceBtwItems),
      Center(
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircleContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        ),
      )
    ]);
  }
}
