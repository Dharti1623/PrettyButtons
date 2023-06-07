import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pretty_button/pretty_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text('Pretty Button Example'),
          centerTitle: true,
          // title: const Text('Plugin  app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrettyButton(
                isDisable: false,
                blurRadius: 5,
                spreadRadius: 1,
                topShadowColor: Theme.of(context).colorScheme.onPrimary,
                bottomShadowColor: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.outlineVariant,
                width: 150,
                height: 50,
                borderRadius: 15,
                innerPadding: const EdgeInsets.all(8.0),
                outerPadding: const EdgeInsets.all(8.0),
                onTap: () {
                  if (kDebugMode) {
                    print('Button clicked');
                  }
                },
                child: Text('buttonTxt',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
