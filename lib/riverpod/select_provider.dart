import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/model/shopping_item_model.dart';

final selectProvider = StateNotifierProvider<SelectNotifier, ShoppingItemModel>(
  (ref) => SelectNotifier(),
);

class SelectNotifier extends StateNotifier<ShoppingItemModel> {
  SelectNotifier()
      : super(
          ShoppingItemModel(
            name: '김치',
            quantity: 1,
            hasBought: false,
            isSpicy: false,
          ),
        );

  toggleItemName() {
    if (state.name == '김치') {
      state = state.copyWith(
        name: '피자',
      );
    } else {
      state = state.copyWith(
        name: '김치',
      );
    }
  }

  toggleIsSpicy() {
    state = state.copyWith(
      isSpicy: !state.isSpicy,
    );
  }
}
