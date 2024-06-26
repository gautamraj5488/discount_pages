import 'package:discounts_pages/pages/discount/discount_screen.dart';
import 'package:discounts_pages/pages/popups/popups.dart';
import 'package:discounts_pages/pages/popups/profile.dart';
import 'package:discounts_pages/pages/reward_flow/choose_reward.dart';
import 'package:discounts_pages/pages/reward_flow/my_rewards.dart';
import 'package:discounts_pages/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: SMAAppTheme.lightTheme,
      darkTheme: SMAAppTheme.lightTheme,
      home:  MyRewards(),
    );
  }
}