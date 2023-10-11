import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/screen/home_screen.dart';

// TODO 2.x 업데이트사항
// (1) async_value_provider.dart
// (2) provider code generation -> StateNotifierProvider 아직 안함
// (3) ref.invalidate() function
// (4) Consumer Widget

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
