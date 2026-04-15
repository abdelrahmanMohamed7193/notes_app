import 'package:flutter/material.dart';
import 'package:notes1_app/views/widgets/ucsotm_button.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 18),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 30),

            CustomButton(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
