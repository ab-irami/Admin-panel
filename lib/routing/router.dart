import 'package:admin_panel_app/pages/authentication/authentication.dart';
import 'package:admin_panel_app/pages/clients/clients.dart';
import 'package:admin_panel_app/pages/drivers/drivers.dart';
import 'package:admin_panel_app/pages/overview/overview.dart';
import 'package:admin_panel_app/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
        return _pageRoute(const OverviewPage());
      case driversPageRoute:
        return _pageRoute(const DriversPage());
      case clientsPageRoute:
        return _pageRoute(const ClientsPage());
      default:
        return _pageRoute(const OverviewPage());
  }
}

PageRoute _pageRoute(Widget child) {
  return MaterialPageRoute(builder: ((context) => child));
}
