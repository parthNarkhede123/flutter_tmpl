part of 'crash_analytics_bloc.dart';

abstract class CrashAnalyticsState extends Equatable {
  const CrashAnalyticsState();  

  @override
  List<Object> get props => [];
}
class CrashAnalyticsInitial extends CrashAnalyticsState {}
