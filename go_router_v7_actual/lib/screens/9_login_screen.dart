import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_v7_actual/layout/default_layout.dart';
import 'package:go_router_v7_actual/route/router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        body: ListView(
      children: [
        ElevatedButton(onPressed: (){

        }, child: Text(authState ? 'logout' : 'login',)),
        ElevatedButton(
          onPressed: () {
            context.go('/login/private');
          },
          child: Text(
            'Go to Private Route',
          ),
        ),
      ],
    ));
  }
}
