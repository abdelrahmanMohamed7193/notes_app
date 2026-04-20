import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes1_app/models/note_model.dart';

import '../../views/widgets/constants.dart';
import 'get_notes_states.dart';

class GetNotesCubit extends Cubit<GetNotesStates> {
  GetNotesCubit() : super(GetNotesInitialState());

  List<NoteModel>? listNotes;
  void fetchNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    listNotes = noteBox.values.toList();
  }
}
