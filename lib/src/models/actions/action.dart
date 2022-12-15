import 'package:equatable/equatable.dart';

abstract class Action extends Equatable {
  const Action();
  
  @override
  List<Object> get props => [];
}