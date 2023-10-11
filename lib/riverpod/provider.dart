import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/riverpod/state_notifier_provider.dart';

final filteredShoppingListProvider = Provider((ref) {
  final sProvider = ref.watch(shoppingListNotifierProvider);
  final fProvider = ref.watch(filterProvider);

  if (fProvider == FilterState.all) {
    return sProvider;
  }

  return fProvider == FilterState.spicy
      ? sProvider.where((element) => element.isSpicy)
      : sProvider.where((element) => !element.isSpicy);
});

enum FilterState {
  notSpicy,
  spicy,
  all,
}

final filterProvider = StateProvider((ref) => FilterState.all);
