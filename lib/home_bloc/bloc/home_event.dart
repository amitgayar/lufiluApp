part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable{
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeLoadingEvent extends HomeEvent{
  const HomeLoadingEvent();
}



class SelectScreenEvent extends HomeEvent {
  const SelectScreenEvent({this.selectedScreen});
  final int? selectedScreen;
  @override
  List<Object?> get props => [selectedScreen];
}


