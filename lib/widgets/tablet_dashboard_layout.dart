import 'package:flutter/material.dart';

import 'custom_drower.dart';
import 'mobile_dashboard_layout.dart';

class TabletDashBoardLayout extends StatelessWidget {
  const TabletDashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: MobileDashboardLayout(),
            )),
      ],
    );
  }
}
