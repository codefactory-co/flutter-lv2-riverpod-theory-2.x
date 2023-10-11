// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $GStateNotifierHash() => r'087428ce1ade0f46619cfb456214b31630eef4f3';

/// See also [GStateNotifier].
final gStateNotifierProvider = AutoDisposeNotifierProvider<GStateNotifier, int>(
  GStateNotifier.new,
  name: r'gStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $GStateNotifierHash,
);
typedef GStateNotifierRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$GStateNotifier extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String $gStateHash() => r'270bc8c623a069bf158f7834ab8cb555102b645b';

/// See also [gState].
final gStateProvider = AutoDisposeProvider<int>(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $gStateHash,
);
typedef GStateRef = AutoDisposeProviderRef<int>;
String $gFutureHash() => r'8b42b166fb6ea9f075f8811f6c7dbb6ce81c34dc';

/// See also [gFuture].
final gFutureProvider = AutoDisposeFutureProvider<int>(
  gFuture,
  name: r'gFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $gFutureHash,
);
typedef GFutureRef = AutoDisposeFutureProviderRef<int>;
String $gStateFamilyHash() => r'a303a53d54d02fadc12965c0fc75909da94807de';

/// See also [gStateFamily].
class GStateFamilyProvider extends AutoDisposeProvider<int> {
  GStateFamilyProvider({
    required this.number,
    required this.number2,
    required this.number3,
  }) : super(
          (ref) => gStateFamily(
            ref,
            number: number,
            number2: number2,
            number3: number3,
          ),
          from: gStateFamilyProvider,
          name: r'gStateFamilyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $gStateFamilyHash,
        );

  final int number;
  final int number2;
  final int number3;

  @override
  bool operator ==(Object other) {
    return other is GStateFamilyProvider &&
        other.number == number &&
        other.number2 == number2 &&
        other.number3 == number3;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number.hashCode);
    hash = _SystemHash.combine(hash, number2.hashCode);
    hash = _SystemHash.combine(hash, number3.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GStateFamilyRef = AutoDisposeProviderRef<int>;

/// See also [gStateFamily].
final gStateFamilyProvider = GStateFamilyFamily();

class GStateFamilyFamily extends Family<int> {
  GStateFamilyFamily();

  GStateFamilyProvider call({
    required int number,
    required int number2,
    required int number3,
  }) {
    return GStateFamilyProvider(
      number: number,
      number2: number2,
      number3: number3,
    );
  }

  @override
  AutoDisposeProvider<int> getProviderOverride(
    covariant GStateFamilyProvider provider,
  ) {
    return call(
      number: provider.number,
      number2: provider.number2,
      number3: provider.number3,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'gStateFamilyProvider';
}

String $gStateNoKeepAliveHash() => r'0a86557f830fc248a76e9a2f015fc38fc25d876d';

/// See also [gStateNoKeepAlive].
class GStateNoKeepAliveProvider extends Provider<int> {
  GStateNoKeepAliveProvider({
    required this.number,
  }) : super(
          (ref) => gStateNoKeepAlive(
            ref,
            number: number,
          ),
          from: gStateNoKeepAliveProvider,
          name: r'gStateNoKeepAliveProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $gStateNoKeepAliveHash,
        );

  final int number;

  @override
  bool operator ==(Object other) {
    return other is GStateNoKeepAliveProvider && other.number == number;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GStateNoKeepAliveRef = ProviderRef<int>;

/// See also [gStateNoKeepAlive].
final gStateNoKeepAliveProvider = GStateNoKeepAliveFamily();

class GStateNoKeepAliveFamily extends Family<int> {
  GStateNoKeepAliveFamily();

  GStateNoKeepAliveProvider call({
    required int number,
  }) {
    return GStateNoKeepAliveProvider(
      number: number,
    );
  }

  @override
  Provider<int> getProviderOverride(
    covariant GStateNoKeepAliveProvider provider,
  ) {
    return call(
      number: provider.number,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'gStateNoKeepAliveProvider';
}
