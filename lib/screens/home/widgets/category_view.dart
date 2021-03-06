import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        Text(
          "ESTUDAR", style: TextStyle()
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
          onPressed: () {},
        )
      ],
    );
  }
}