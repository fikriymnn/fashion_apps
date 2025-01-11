import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
