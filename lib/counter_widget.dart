import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
          onPressed: () => ref.read(counterProvider.notifier).decrease(),
          icon: const Icon(Icons.remove_circle)),
      SizedBox(
        width: 128,
        child: Center(
            child: Text(
          '$counter',
          style: Theme.of(context).textTheme.headline4,
        )),
      ),
      IconButton(
          onPressed: () => ref.read(counterProvider.notifier).increase(),
          icon: const Icon(Icons.add_circle)),
    ]);
  }
}
