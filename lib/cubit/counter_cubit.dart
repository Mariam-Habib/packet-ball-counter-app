import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pb/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);
  int teamAPoints = 0;
  int teamBPoints = 0;
  void increment(String team, int points) {
    if (team == 'A') {
      teamAPoints += points;
      emit(CounterAState());
    } else {
      if (team == 'B') {
        teamBPoints += points;
        emit(CounterBState());
      }
    }
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAState()); // Reset to initial state or any state you prefer
  }
}
