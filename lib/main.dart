import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/views/dashboard_view.dart';

void main() {
  runApp(
      DevicePreview(enabled: true, builder: (context) => const DashBoradApp()));
}

class DashBoradApp extends StatelessWidget {
  const DashBoradApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFAFAFA)),
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
