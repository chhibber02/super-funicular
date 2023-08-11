import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_funicular/pages/events.dart';
import 'item.dart';
import 'item_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC List Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Inter',
      ),
      home: BlocProvider(
        create: (context) => ItemBloc(),
        child: const EventsPage(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itemBloc = context.watch<ItemBloc>();

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: ()=> Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EventsPage(),
          ),
          ),
          child: const Text('BLoC List Example'),
        ),
      ),
      body: ListView.builder(
        itemCount: itemBloc.state.length,
        itemBuilder: (context, index) {
          final item = itemBloc.state[index];
          return ListTile(
            title: Text(item.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final newItem = Item('Item ${itemBloc.state.length + 1}');
          itemBloc.addItem(newItem);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
