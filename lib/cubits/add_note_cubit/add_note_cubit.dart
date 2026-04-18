import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes1_app/models/note_model.dart';
import 'package:notes1_app/views/widgets/constants.dart';

import 'add_note_states.dart';

// part 'add_note_states.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(AddNotesInitialsState());

  addNote(NoteModel note) async {
    emit(AddNotesLoadingsState());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNotesSuccessState());
    } catch (e) {
      emit(AddNotesFailureState(e.toString()));
    }
  }
}
