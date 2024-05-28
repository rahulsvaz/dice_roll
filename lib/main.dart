import 'package:dice_roll/pages/dice/bloc/dice_bloc.dart';
import 'package:dice_roll/pages/dice/dice_roll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiceBloc(),
      child: const MaterialApp(
        home: DiceRollPage(),
      ),
    );
  }
}
