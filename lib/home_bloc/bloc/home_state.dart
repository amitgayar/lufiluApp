part of 'home_bloc.dart';

class HomeState extends Equatable{
  const HomeState._({
    this.selectedScreen = 0,
  });

  const HomeState.initial() : this._();

  const HomeState.loadInProgress() : this._();

  const HomeState.loadedState({int? selectedScreen = 0})
      : this._(selectedScreen: selectedScreen);

  HomeState copyWith({int? selectedScreen}) =>
      HomeState._(selectedScreen: this.selectedScreen);

  final int? selectedScreen;


  bool get isComplete => ([selectedScreen].isNotEmpty);

  @override
  List<Object?> get props => [selectedScreen];
}