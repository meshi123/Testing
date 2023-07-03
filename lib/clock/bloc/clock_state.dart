part of 'clock_bloc.dart';

enum ClockStatus { initial, success, failure }

class ClockState extends Equatable {
  const ClockState({
    this.events = const <EventData>[],
    this.status = ClockStatus.initial,
  });

  final List<EventData> events;
  final ClockStatus status;

  ClockState copyWith({List<EventData>? events, ClockStatus? status}) {
    return ClockState(
      events: events ?? this.events,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [events, status];
}
