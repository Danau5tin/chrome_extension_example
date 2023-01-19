import 'package:chrome_extension_example/features/counter/presentation/state_management/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final counter = ref.watch(counterStateNotifierProvider);
          return Column(
            children: [
              Center(child: Text('$counter')),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _increment(ref),
                onLongPress: () => _decrement(ref),
                child: const Text('Increment/Decrement'),
              ),
            ],
          );
        },
      ),
    );
  }

  void _increment(WidgetRef ref) =>
      ref.read(counterStateNotifierProvider.notifier).increment();

  void _decrement(WidgetRef ref) =>
      ref.read(counterStateNotifierProvider.notifier).decrement();
}
