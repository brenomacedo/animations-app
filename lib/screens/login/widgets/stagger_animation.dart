import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class StaggerAnimation extends StatelessWidget {

  final AnimationController controller;

  StaggerAnimation({ this.controller }) :
    buttonSqueeze = Tween(begin: 320.0, end: 60.0).animate(CurvedAnimation(parent: controller,
      curve: Interval(0.0, 0.15)));

  final Animation<double> buttonSqueeze;

  Widget _buildInside(BuildContext context) {
    if(buttonSqueeze.value > 75) {
      return Text('Sign in', style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.3
      ));
    } else {
      return CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white), strokeWidth: 1.0);
    }
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Container(
          width: buttonSqueeze.value,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(247, 64, 106, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
          child: _buildInside(context),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}