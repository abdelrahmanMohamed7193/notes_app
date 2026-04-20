import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes1_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes1_app/cubits/add_note_cubit/add_note_states.dart';

import '../../cubits/get_notes_cubit/get_notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesStates>(
        listener: (context, state) {
          if (state is AddNotesFailureState) {
            print('Failed${state.errorMessage}');
          }
          if (state is AddNotesSuccessState) {
            BlocProvider.of<GetNotesCubit>(context).fetchNotes();
            print('Success Added Note');
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),

            child: SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
  }
}
