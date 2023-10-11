import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theory/repository/multiples_repository.dart';

final multiplesStreamProvider = StreamProvider<List<int>>(
  (ref) {
    return MultiplesRepository.getMultiplesStream(number: 2);
  },
);
