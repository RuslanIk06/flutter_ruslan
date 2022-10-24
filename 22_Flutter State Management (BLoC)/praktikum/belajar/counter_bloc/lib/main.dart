import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => context.read<CounterBloc>().add(Increment()),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () => context.read<CounterBloc>().add(Reset()),
                tooltip: 'Reset',
                child: const Icon(Icons.sync),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () => context.read<CounterBloc>().add(Decrement()),
                tooltip: 'Decrement',
                child: const Icon(Icons.minimize),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation
              .centerFloat, // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
