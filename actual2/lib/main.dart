import 'package:actual2/riverpod/provider_observer.dart';
import 'package:actual2/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(
    observers: [
      Logger(),
    ],
    child: MaterialApp(
      home: HomeScreen(),
    ),
  ));
}
