import 'package:app_fitness/widgets/trending_plans_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/active_plan_section.dart';
import '../widgets/app_bar_section.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        children: [
         const AppBarSection(),
         const ActivePlanSection(),
          TrendingPlans()
        ],

      ),
    );
  }
}

