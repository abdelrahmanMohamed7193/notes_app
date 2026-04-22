import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes1_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes1_app/views/widgets/notes_list_view.dart';

import 'custome_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetNotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search_rounded,
            onPressed: () {},
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
