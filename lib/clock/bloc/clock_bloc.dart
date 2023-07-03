import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/event_data.dart';

part 'clock_event.dart';
part 'clock_state.dart';

class ClockBloc extends Bloc<ClockEvent, ClockState> {
  ClockBloc(Stream<List<EventData>> stream)
      : _stream = stream,
        super(const ClockState()) {
    on<ClockEventInitialize>(_onInitialzie);
  }

  final Stream<List<EventData>> _stream;

  void _onInitialzie(
      ClockEventInitialize event, Emitter<ClockState> emit) async {
    try {
      final eventDatas = <EventData>[];

      await emit.onEach(
        _stream,
        onData: (data) {
          // eventDatas.add(data.first);
          print(data);
        },
      );

      emit(state.copyWith(
        events: eventDatas,
        status: ClockStatus.success,
      ));
      print('Done');
    } catch (e) {
      emit(state.copyWith(status: ClockStatus.failure));
    }
  }
}
