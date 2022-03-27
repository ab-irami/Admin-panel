import 'package:admin_panel_app/constants/controllers.dart';
import 'package:admin_panel_app/constants/style.dart';
import 'package:admin_panel_app/helpers/responsive.dart';
import 'package:admin_panel_app/routing/routes.dart';
import 'package:admin_panel_app/widgets/custom_text.dart';
import 'package:admin_panel_app/widgets/side_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (Responsive.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40.0),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(
                        'assets/icons/shop-cart.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Flexible(
                      child: CustomText(
                        text: 'DashBoard',
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
              ],
            ),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItems(
                      itemName: itemName == authenticationPageRoute
                          ? 'Log Out'
                          : itemName,
                      onTap: () {
                        if (itemName == authenticationPageRoute) {
                          
                        }
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItem(itemName);
                          if (Responsive.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(itemName);
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
