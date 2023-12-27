import 'package:flutter/material.dart';
import 'package:flutter_counter/features/main/presentation/pages/counter_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    debugPrint("${settings.name}");
    switch (settings.name) {
      case CounterPage.route:
        return _materialRoute(const CounterPage());
      default:
        return _materialRoute(const CounterPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
