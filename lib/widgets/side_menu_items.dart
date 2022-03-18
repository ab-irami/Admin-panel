import 'package:admin_panel_app/helpers/responsive.dart';
import 'package:admin_panel_app/widgets/horizontal_menu_items.dart';
import 'package:admin_panel_app/widgets/vertical_menu_items.dart';
import 'package:flutter/material.dart';

class SideMenuItems extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;
  const SideMenuItems({Key? key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isCustomScreen(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }

    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
