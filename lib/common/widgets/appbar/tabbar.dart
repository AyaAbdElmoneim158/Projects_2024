import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/device/device_utility.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
