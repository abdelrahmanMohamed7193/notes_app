// part 'add_note_cubit.dart';

abstract class AddNotesStates {}

class AddNotesInitialsState extends AddNotesStates {}

class AddNotesLoadingsState extends AddNotesStates {}

class AddNotesSuccessState extends AddNotesStates {}

class AddNotesFailureState extends AddNotesStates {
  final String errorMessage;

  AddNotesFailureState(this.errorMessage);
}
