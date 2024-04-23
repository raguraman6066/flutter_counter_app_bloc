part of 'counter_bloc.dart';

//sealed class tells which class extends counterevent
sealed class CounterEvent {}

//create event- counterincrement
class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}
