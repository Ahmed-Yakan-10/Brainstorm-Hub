import 'package:brainstorm_hub/constants.dart';
import 'package:brainstorm_hub/widgets/custom_button.dart';
import 'package:brainstorm_hub/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Add Note ✍️💭',
                  style: const TextStyle(
                    fontFamily: kFont,
                    color: kSecondaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 4,
            ),
            SizedBox(
              height: 125,
            ),
            CustomButton(
              buttonName: 'Add',
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
