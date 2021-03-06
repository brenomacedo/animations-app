import 'package:animation_app/screens/home/widgets/animated_listview.dart';
import 'package:animation_app/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {

  final AnimationController controller;

  StaggerAnimation({ @required this.controller }) :
    containerGrow = CurvedAnimation(
      parent: controller,
      curve: Curves.ease
    ),
    listSlidePosition = EdgeInsetsTween(
      begin: EdgeInsets.only(bottom: 0),
      end: EdgeInsets.only(bottom: 80)
    ).animate(CurvedAnimation(parent: controller,
    curve: Interval(0.325, 0.8, curve: Curves.ease)));

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      children: [
        HomeTop(containerGrow: containerGrow),
        AnimatedListView(listSlidePosition: listSlidePosition)
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