import 'package:bajam_app/theme.dart'; 
import 'package:flutter/material.dart';

class CustomScafford  extends StatelessWidget {
  const CustomScafford ({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.grey),
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.primary,
      body: Stack(
        children: <Widget>[
          SafeArea(child: child!)
        ],
      ),
    );
  }
}