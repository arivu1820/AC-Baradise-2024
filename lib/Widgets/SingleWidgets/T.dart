import 'package:acbaradise_2024/Widgets/CombinedWidgets/MoreViewSubscriptionScheme.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [ExpansionTile].

void main() => runApp(const ExpansionTileApp());

class ExpansionTileApp extends StatelessWidget {
  const ExpansionTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('ExpansionTile Sample')),
        body: const ExpansionTileExample(),
      ),
    );
  }
}

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ExpansionTile(
          title: Text('ExpansionTile 1'),
          // subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            MoreViewSubscriptionScheme(),
            MoreViewSubscriptionScheme(),
            MoreViewSubscriptionScheme()
          ],
        ),
      ]
    );
  }
}
