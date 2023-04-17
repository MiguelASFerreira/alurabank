import 'package:alurabank/components/sections/points_account.dart';
import 'package:flutter/material.dart';

import 'package:alurabank/components/sections/account_actions.dart';
import 'package:alurabank/components/sections/header.dart';
import 'package:alurabank/components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget> [
          Header(),
          RecentActivity(),
          AccountActions(),
          PointsAccount(),
        ],
      ),
    );
  }
}
