import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 160),
      child: TextButton(
        onPressed: () {

        },
        child: Text('Não possui uma conta? Cadastre-se!', textAlign: TextAlign.center, style: TextStyle(
          fontWeight: FontWeight.w300, color: Colors.white
        ), overflow: TextOverflow.ellipsis),
      ),
    );
  }
}