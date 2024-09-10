import 'dart:developer';

import 'package:basketball_counter_app/cubit/counterStatController.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStat> {
  CounterCubit() : super(TeamBCounter());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamPoinsIncrement({required String teamName, required int pointsNo}) {
     
    if (teamName == 'A') {
      teamAPoints += pointsNo;

      emit(TeamACounter());
    } else {
      teamBPoints += pointsNo;
      emit(TeamBCounter());
    }
     log('Team A Points =$teamAPoints');
     log('Team B Points =$teamBPoints');
  }
}
