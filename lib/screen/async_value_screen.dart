import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/layout/default_layout.dart';
import 'package:riverpod_theory/riverpod/async_value_provider.dart';

class AsyncValueScreen extends ConsumerWidget {
  const AsyncValueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(customAsyncValueProvider);

    return DefaultLayout(
      title: 'AsyncValue',
      body: Center(
        child: result.when(
          data: (data) => Text(data.toString()),
          error: (err, stack) => Text('Error: $err'),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
