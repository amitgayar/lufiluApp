import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc():
        super(const HomeState.initial()){
    on <HomeEvent>(_onEvent, transformer: sequential());
  }

  void _onEvent(HomeEvent event, Emitter<HomeState> emit){
    if (event is HomeLoadingEvent) return _onLoading(event, emit);
    if (event is SelectScreenEvent) return _onLoad(event, emit);

  }

  void _onLoading(
      HomeLoadingEvent event,
      Emitter<HomeState> emit,
      ) async {
    emit(const HomeState.loadInProgress());
  }

  void _onLoad(
      SelectScreenEvent event,
      Emitter<HomeState> emit,
      ) async {
    emit(HomeState.loadedState(selectedScreen : event.selectedScreen));
  }


}