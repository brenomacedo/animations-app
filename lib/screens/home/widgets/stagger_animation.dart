import 'package:animation_app/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {

  final AnimationController controller;

  StaggerAnimation({ @required this.controller }) :
    containerGrow = CurvedAnimation(
      parent: controller,
      curve: Curves.ease
    );

  final Animation<double> containerGrow;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      children: [
        HomeTop(containerGrow: containerGrow)
      ],
      padding: EdgeInsets.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}