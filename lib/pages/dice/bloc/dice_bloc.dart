// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  DiceBloc() : super(DiceInitial()) {
    on<RollDiceEvent>(_rollDice);
  }

  FutureOr<void> _rollDice(RollDiceEvent event, Emitter<DiceState> emit) async{
    print('event function called');
emit(LoadingState());
    final randoMizer = Random();

    final number = randoMizer.nextInt(6) + 1;

   await Future.delayed(Duration(seconds: 2),(){
    print(number);
    print('state emitted');
    emit(DiceUpdated(number: number));
    print('event function ended');

    });


  }
}
