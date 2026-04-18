import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes1_app/models/note_model.dart';
import 'package:notes1_app/views/widgets/constants.dart';

import 'add_note_states.dart';

// part 'add_note_states.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(AddNotesInitialsState());
  // bool isLoading = false;

  addNote(NoteModel note) async {
    // isLoading = true;
    emit(AddNotesLoadingsState());
    try {
      // isLoading = false;
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNotesSuccessState());
    } catch (e) {
      // isLoading = false;
      emit(AddNotesFailureState(e.toString()));
    }
  }
}
