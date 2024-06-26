import 'package:flutlab_projects_2024/common/widgets/appbar/tabbar.dart';
import 'package:flutlab_projects_2024/common/widgets/brands/brand_card.dart';
import 'package:flutlab_projects_2024/common/widgets/products_card/cart_menu_icon.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';

import '/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import '/common/widgets/custom_shapes/containers/search_container.dart';
import '/common/widgets/layout/grid_layout.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCardCounterIcon(onPress: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///* Search bar - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      ///* Features Brands - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                      TSectionHeading(
                        title: "features Brands",
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      ///* Brands Grid - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) =>
                            const TBrandCard(showBorder: true),
                      ),
                    ],
                  ),
                ),

                ///* Tabs - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                bottom: const TTabBar(tabs: [
                  Tab(child: Text("Sports")),
                  Tab(child: Text("Furniture")),
                  Tab(child: Text("Electronics")),
                  Tab(child: Text("Clothes")),
                  Tab(child: Text("Cosmetics")),
                ]),
              ),
            ];
          },
          body: const TabBarView(children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
