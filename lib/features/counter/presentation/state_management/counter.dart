import 'package:chrome_extension_example/features/counter/domain/repos/local_key_value_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repos/local_key_value_storage.dart';

const _counterKey = 'counter';

final counterStateNotifierProvider =
    StateNotifierProvider<CounterStateNotifier, int>(
  (ref) => CounterStateNotifier(
    ref.read(localKeyValueStorageProvider),
  ),
);

class CounterStateNotifier extends StateNotifier<int> {
  final LocalKeyValueStorage _localKeyValueStorage;

  CounterStateNotifier(this._localKeyValueStorage)
      : super(
          _localKeyValueStorage.readInt(_counterKey),
        );

  void increment() {
    state++;
    _localKeyValueStorage.saveInt(_counterKey, state);
  }

  void decrement() {
    state--;
    _localKeyValueStorage.saveInt(_counterKey, state);
  }
}
