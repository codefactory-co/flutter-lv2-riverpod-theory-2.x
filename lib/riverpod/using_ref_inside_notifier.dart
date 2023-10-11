import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/model/shopping_item_model.dart';

final toggleEnumProvider = StateProvider<ToggleEnum>((ref) => ToggleEnum.all);

enum ToggleEnum {
  // 전부 구매완료로 토글
  all,
  // 전부 구매 안함으로 토글
  none,
}

final shoppingListRefProvider =
    StateNotifierProvider<ShoppingListRefNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListRefNotifier(ref),
);

class ShoppingListRefNotifier extends StateNotifier<List<ShoppingItemModel>> {
  final Ref _ref;

  // just copy and paste from [provider.dart]
  ShoppingListRefNotifier(this._ref)
      : super(
          [
            ShoppingItemModel(
              name: '김치',
              quantity: 3,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '라면',
              quantity: 5,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '불닭소스',
              quantity: 1,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '삼겹살',
              quantity: 10,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '수박',
              quantity: 2,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '카스테라',
              quantity: 5,
              hasBought: false,
              isSpicy: false,
            ),
          ],
        );

  toggleAll() {
    final toggleProvider = _ref.read(toggleEnumProvider);

    if (toggleProvider == ToggleEnum.all) {
      state = state
          .map(
            (e) => e.copyWith(
              hasBought: true,
            ),
          )
          .toList();
    } else {
      state = state
          .map(
            (e) => e.copyWith(
              hasBought: false,
            ),
          )
          .toList();
    }
  }

  void toggleTodo({required String name}) {
    state = state
        .map(
          (e) => e.name == name ? e.copyWith(hasBought: !e.hasBought) : e,
    )
        .toList();
  }
}
