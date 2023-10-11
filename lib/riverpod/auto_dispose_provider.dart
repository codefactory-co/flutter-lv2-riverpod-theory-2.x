import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/repository/multiples_repository.dart';

final autoDisposeProvider = FutureProvider.autoDispose((ref) {
  return MultiplesRepository.getMultiplesFuture(number: 2);
});
