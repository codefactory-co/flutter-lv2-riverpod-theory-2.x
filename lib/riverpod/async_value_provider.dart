import 'package:flutter_riverpod/flutter_riverpod.dart';

final customAsyncValueProvider = StateNotifierProvider<AsyncValueNotifier, AsyncValue<List<int>>>(
  (ref) {
    return AsyncValueNotifier();
  },
);

class AsyncValueNotifier extends StateNotifier<AsyncValue<List<int>>> {
  AsyncValueNotifier() : super(const AsyncValue.loading()) {
    fetchData();
  }

  void fetchData() async {
    state = const AsyncValue.loading();

    try {
      await Future.delayed(Duration(seconds: 1));

      state = AsyncValue.data(List.generate(10, (index) => index * 2));
    } catch (e, stack) {
      // TODO Riverpod 2.0 업데이트
      // AsyncValue.Error에서 StackTrace가 Named Parameter가 아니고
      // Positional Parameter로 들어감
      state = AsyncValue.error(e, stack);
    }
  }

  void fetchDataGuard() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await Future.delayed(Duration(seconds: 1));

      return List.generate(10, (index) => index * 2);
    });
  }
}
