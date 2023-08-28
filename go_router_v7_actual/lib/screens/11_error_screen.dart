import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  final String error;

  const ErrorScreen({
    required this.error,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('에러 페이지'),
      ),
      body: ListView(
        children: [
          Text('Error: $Future.error(error)'),
          ElevatedButton(
            onPressed: () {
              context.go('/');
            },
            child: Text('에러'),
          )
        ],
      ),
    );
  }
}
