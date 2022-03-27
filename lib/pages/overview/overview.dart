import 'package:admin_panel_app/constants/controllers.dart';
import 'package:admin_panel_app/helpers/responsive.dart';
import 'package:admin_panel_app/pages/overview/widgets/available_drivers.dart';
import 'package:admin_panel_app/pages/overview/widgets/overview_cards_large_screen.dart';
import 'package:admin_panel_app/pages/overview/widgets/overview_cards_medium_screen.dart';
import 'package:admin_panel_app/pages/overview/widgets/overview_cards_small_screen.dart';
import 'package:admin_panel_app/pages/overview/widgets/revenue_section_large.dart';
import 'package:admin_panel_app/pages/overview/widgets/revenue_section_small.dart';
import 'package:admin_panel_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: Responsive.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (Responsive.isLargeScreen(context) ||
                  Responsive.isMediumScreen(context))
                if (Responsive.isCustomScreen(context))
                  const OverViewCardMedium()
                else
                  const OverViewCardLarge()
              else
                const OverViewCardSmall(),
              if (!Responsive.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),
              const AvailableDrivers()
            ],
          ),
        ),
      ],
    );
  }
}
