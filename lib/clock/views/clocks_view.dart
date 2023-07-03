import 'package:clock_it/clock/bloc/clock_bloc.dart';
import 'package:clock_it/clock/views/clock_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClocksView extends StatelessWidget {
  const ClocksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClockBloc, ClockState>(
      builder: (context, state) {
        final events = state.events;

        switch (state.status) {
          case ClockStatus.initial:
            return const CircularProgressIndicator();
          case ClockStatus.failure:
            return const Center(child: Text('Failed to load.'));
          case ClockStatus.success:
            return ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                return ClockTile(eventData: events[index]);
              },
            );
        }
      },
    );
  }
}
