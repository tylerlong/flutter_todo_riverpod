import 'package:flutter/material.dart';
import 'package:flutter_todo_riverpod/counter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}
