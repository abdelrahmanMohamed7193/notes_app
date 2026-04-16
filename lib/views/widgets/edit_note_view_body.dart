import 'package:flutter/material.dart';
import 'package:notes1_app/views/widgets/custom_text_field.dart';
import 'package:notes1_app/views/widgets/custome_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(icon: Icons.check, title: 'Edit Note'),
          SizedBox(height: 50),
          CustomTextField(hint: 'title'),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 4),
        ],
      ),
    );
  }
}
