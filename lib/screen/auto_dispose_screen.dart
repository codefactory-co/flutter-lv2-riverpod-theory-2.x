import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/layout/default_layout.dart';
import 'package:riverpod_theory/riverpod/auto_dispose_provider.dart';

class AutoDisposeScreen extends ConsumerWidget {
  const AutoDisposeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<int>> result = ref.watch(autoDisposeProvider);

    return DefaultLayout(
      title: 'AutoDispose',
      body: Center(
        child: result.when(
          data: (data) => Text(data.toString()),
          error: (err, stack) => Text('Error : $err'),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
