import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/repository/multiples_repository.dart';

final familyProvider = FutureProvider.family<List<int>, int>(
  (ref, int number) {
    return MultiplesRepository.getMultiplesFuture(number: number);
  },
);
