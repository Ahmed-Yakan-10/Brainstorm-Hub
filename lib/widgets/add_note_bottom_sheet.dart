import 'package:brainstorm_hub/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 25*2,),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(height: 10,),
          CustomTextField(
            hintText: 'Content',
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
