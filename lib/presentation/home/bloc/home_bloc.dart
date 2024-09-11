import 'package:bloccounter/presentation/home/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, int> {
  HomeBloc() : super(0) {
    on<HomeIncreamentEvent>((event, emit) {
      emit(state + 1);
    });

    on<HomeDecreamentEvent>(
      (event, emit) {
        emit(state - 1);
      },
    );
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
