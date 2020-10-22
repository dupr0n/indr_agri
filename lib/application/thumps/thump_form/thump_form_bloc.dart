import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/thumps/thump.dart';
import '../../../domain/thumps/thump_failure.dart';

part 'thump_form_bloc.freezed.dart';
part 'thump_form_event.dart';
part 'thump_form_state.dart';

class ThumpFormBloc extends Bloc<ThumpFormEvent, ThumpFormState> {
  ThumpFormBloc() : super(ThumpFormState.initial());

  @override
  Stream<ThumpFormState> mapEventToState(
    ThumpFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
