import 'package:basketball_counter_bloc/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamIncrement(String team, int incrementVal) {
    if (team.toLowerCase() == 'a') {
      teamAPoints += incrementVal;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += incrementVal;
      emit(CounterBIncrementState());
    }
  }

  void teamAIncrement(int incrementVal) {
    teamAPoints += incrementVal;
    emit(CounterAIncrementState());
  }

  void teamBIncrement(int incrementVal) {
    teamBPoints += incrementVal;
    emit(CounterBIncrementState());
  }

  void resetValues() {
    teamAPoints = 0;
    teamBPoints = 0;
  }
}
