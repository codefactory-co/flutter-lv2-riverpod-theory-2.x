import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

// normal manual way of declaring provider
final mStateProvider = StateProvider((ref) => 0);

@riverpod
int gState(GStateRef ref) {
  return 0;
}

@riverpod
Future<int> gFuture(GFutureRef ref) async {
  await Future.delayed(Duration(seconds: 1));

  return 0;
}

// Stream은 현재 지원 안함
// https://github.com/rrousselGit/riverpod/issues/1663
// @riverpod
// Stream<int> gStream(GStreamRef ref) async* {
//   for (int i = 0; i < 10; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

@riverpod
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

//2
//
// using parameters easily when using code generation
@riverpod
int gStateFamily(
  GStateFamilyRef ref, {
  required int number,
  required int number2,
  required int number3,
}) {
  return number * number2 * number3;
}

@Riverpod(
  keepAlive: true,
)
int gStateNoKeepAlive(
  GStateNoKeepAliveRef ref, {
  required int number,
}) {
  return number;
}
