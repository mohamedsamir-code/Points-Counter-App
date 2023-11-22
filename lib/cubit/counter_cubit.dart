import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app/cubit/counter_state.dart';
import 'package:points_counter_app/main.dart';

class CounterCubit extends Cubit<CounterState> {

  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit():super(CounterAIncrementState());

  void teamIncrement({required String team, required int buttonNumber}){
    if(team == 'A'){
      teamAPoints+=buttonNumber;
      emit(CounterAIncrementState());
    } else{
      teamBPoints+=buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
