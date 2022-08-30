import 'package:flutter/material.dart';
import 'package:test_web_app/theme/app_theme.dart';
import 'package:test_web_app/ui/share/custom_app_menu.dart';
import 'package:test_web_app/ui/views/home_view.dart';
import 'package:test_web_app/ui/views/profile_container_view.dart';

class MainLayoutPage extends StatefulWidget {
  final Widget child;

  const MainLayoutPage({super.key, required this.child});

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            Row(
              children: [
                Expanded(flex: 3, child: ProfileContainer()),
                Expanded(flex: 7, child: HomeView())
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
