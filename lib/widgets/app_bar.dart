import 'package:admin_panel_app/constants/style.dart';
import 'package:admin_panel_app/helpers/responsive.dart';
import 'package:admin_panel_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      leading: !Responsive.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Image.asset(
                    'assets/icons/shop-cart.png',
                    width: 40,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(
                Icons.menu,
                color: dark,
              ),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      backgroundColor: light,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: 'DashBoard',
              size: 20.0,
              color: lightGrey,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
