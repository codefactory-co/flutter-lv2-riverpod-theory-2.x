class MultiplesRepository {
  static Future<List<int>> getMultiplesFuture({
    required int number,
  }) async {
    await Future.delayed(Duration(seconds: 1));

    return List.generate(10, (index) => index * number);
  }

  static Stream<List<int>> getMultiplesStream({
    required int number,
  }) async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));

      yield List.generate(i, (index) => index * number);
    }
  }
}
