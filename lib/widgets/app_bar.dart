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
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(width: 24),
          CustomText(
            text: 'Wibi',
            color: lightGrey,
          ),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
    );
