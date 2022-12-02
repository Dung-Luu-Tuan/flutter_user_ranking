import 'package:bloc/bloc.dart';

part 'state.dart';

class RankingCubit extends Cubit<RankingState> {
  RankingCubit() : super(RankingState(rank: true));

  void isPost() => emit(RankingState(rank: true));
  void isWantToGo() => emit(RankingState(rank: false));
}

class YearCubit extends Cubit<YearState> {
  YearCubit() : super(YearState(year: true));

  void isYear() => emit(YearState(year: true));
  void isMonth() => emit(YearState(year: false));
}
