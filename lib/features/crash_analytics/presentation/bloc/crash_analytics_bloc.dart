import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'crash_analytics_event.dart';
part 'crash_analytics_state.dart';

class CrashAnalyticsBloc
    extends Bloc<CrashAnalyticsEvent, CrashAnalyticsState> {
  CrashAnalyticsBloc() : super(CrashAnalyticsInitial()) {
    on<CrashAnalyticsEvent>((event, emit) {});
  }
}
