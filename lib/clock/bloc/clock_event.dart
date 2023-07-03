part of 'clock_bloc.dart';

abstract class ClockEvent extends Equatable {
  const ClockEvent();

  @override
  List<Object> get props => [];
}

final class ClockEventInitialize extends ClockEvent {
  const ClockEventInitialize();
}
