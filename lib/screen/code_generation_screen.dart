import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/layout/default_layout.dart';
import 'package:riverpod_theory/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerA = ref.watch(gStateProvider);
    final providerB = ref.watch(gFutureProvider);
    final providerC = ref.watch(gStateNotifierProvider);

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        children: [
          Text('Provider A : $providerA'),
          ElevatedButton(
            onPressed: () {
              ref.read(gStateProvider);
            },
            child: Text('Provider A'),
          ),
          Text(
            'Provider B : ${providerB.whenOrNull(
              data: (data) => data,
            )}',
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Provider B'),
          ),
          Text('Provider C : $providerC'),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Provider C : $providerC'),
          ),
        ],
      ),
    );
  }
}
