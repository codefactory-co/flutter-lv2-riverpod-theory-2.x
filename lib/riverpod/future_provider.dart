import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/repository/multiples_repository.dart';

final multiplesFutureProvider = FutureProvider<List<int>>((ref) async {
  final result = await MultiplesRepository.getMultiplesFuture(number: 2);

  return result;
});
