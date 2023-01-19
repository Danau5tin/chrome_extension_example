import 'package:chrome_extension_example/features/counter/data/repos/local_key_value_storage.dart';
import 'package:chrome_extension_example/features/counter/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  final container = ProviderContainer();
  await container.read(localKeyValueStorageProvider).init();
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: const CounterScreen(),
    );
  }
}
