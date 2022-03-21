// ignore_for_file: use_key_in_widget_constructors

import 'package:admin_panel_app/helpers/responsive.dart';
import 'package:admin_panel_app/widgets/app_bar.dart';
import 'package:admin_panel_app/widgets/large_screen.dart';
import 'package:admin_panel_app/widgets/side_menu.dart';
import 'package:admin_panel_app/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: appBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
