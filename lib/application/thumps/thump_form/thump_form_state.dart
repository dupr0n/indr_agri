part of 'thump_form_bloc.dart';

@freezed
abstract class ThumpFormState with _$ThumpFormState {
  const factory ThumpFormState({
    @required Thump thump,
    @required bool isSaving,
    @required bool isEditing,
    @required Option<Either<ThumpFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ThumpFormState;
  factory ThumpFormState.initial() => ThumpFormState(
        thump: Thump.empty(),
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}
