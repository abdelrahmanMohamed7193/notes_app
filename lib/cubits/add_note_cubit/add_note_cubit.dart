import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_note_states.dart';

// part 'add_note_states.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(AddNotesInitialsState());
}
