import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drower.dart';
import 'package:responsive_adaptive_ui/widgets/mobile_dashboard_layout.dart';

import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/tablet_dashboard_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xff4EB7F2),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      body: AdaptiveLayout(
        mobile: (context) => const MobileDashboardLayout(),
        tablet: (context) => const TabletDashBoardLayout(),
        desktop: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
