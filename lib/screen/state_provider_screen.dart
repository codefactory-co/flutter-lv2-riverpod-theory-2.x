import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/layout/default_layout.dart';
import 'package:riverpod_theory/riverpod/state_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(numberProvider);

    return DefaultLayout(
      title: 'Basic Provider',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            provider.toString(),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(numberProvider.notifier).state =
                  ref.read(numberProvider.notifier).state + 1;
            },
            child: Text(
              'UP',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(numberProvider.notifier).update((state) => state + 1);
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
}
