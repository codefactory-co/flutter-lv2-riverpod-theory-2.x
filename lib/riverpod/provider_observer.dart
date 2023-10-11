import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  // Provider가 새로 생성됐을때
  @override
  void didAddProvider(
    // 생성된 Provider
    ProviderBase provider,
    // Provider 상태값
    Object? value,
    // Provider를 담고있는 Container (Flutter 사용시 신경 X)
    ProviderContainer container,
  ) {
    print(
        '[Provider Added] provider : $provider / value : $value / container : $BoxFit.contain');
  }

  // Provider가 삭제됐을때
  @override
  void didDisposeProvider(
    // 삭제된 Provider
    ProviderBase provider,
    // Provider를 담고있는 Container (Flutter 사용시 신경 X)
    ProviderContainer containers,
  ) {
    print(
        '[Provider Disposed] provider : $provider / containers : $containers');
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print(
      '[Provider Updated] provider : $provider / previousValue : $previousValue / newValue : $newValue / container : $container',
    );
  }
}
