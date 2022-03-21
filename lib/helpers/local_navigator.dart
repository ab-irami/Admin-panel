import 'package:admin_panel_app/constants/controllers.dart';
import 'package:admin_panel_app/controllers/navigation_controller.dart';
import 'package:admin_panel_app/routing/router.dart';
import 'package:admin_panel_app/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overViewPageRoute,
  onGenerateRoute: generateRoute,
);
