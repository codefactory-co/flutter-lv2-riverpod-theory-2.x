import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/layout/default_layout.dart';
import 'package:riverpod_theory/riverpod/future_provider.dart';

class MapAndWhenScreen extends ConsumerWidget {
  const MapAndWhenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<int>> numbers = ref.watch(multiplesFutureProvider);

    return DefaultLayout(
      title: 'MapAndWhen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            numbers.map(
              data: (data) => Text(data.toString()),
              error: (data) => Text(data.toString()),
              loading: (data) => CircularProgressIndicator(),
            ),
            numbers.when(
              data: (data) => Text(data.toString()),
              error: (err, stack) => Text('Error : $err'),
              loading: () => CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
