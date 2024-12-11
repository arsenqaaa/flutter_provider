import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(const MyApp());
  runApp(
    ChangeNotifierProvider(
      create: (value) => CounterProvider(),
      child: const MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var test = 9;
    var counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'ProviderTest',
          style: TextStyle(color: Colors.white),
          )
      ),
          body: Center(
            child: Consumer(
              builder: (context, counter, child){
                return Text('$counter.count');
              }
              )
          )
    );

  }

}

//test
