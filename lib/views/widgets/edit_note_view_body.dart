import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes1_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes1_app/models/note_model.dart';
import 'package:notes1_app/views/widgets/custom_text_field.dart';
import 'package:notes1_app/views/widgets/custome_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<GetNotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustomTextField(
            hint: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: widget.noteModel.subTitle,
            maxLines: 4,
            onChanged: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
