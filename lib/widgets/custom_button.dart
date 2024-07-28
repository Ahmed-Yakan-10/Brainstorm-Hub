import 'package:brainstorm_hub/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isLoading
              ? const Center(
                  child: SizedBox(
                    height: 24,width: 24,
                    child: CircularProgressIndicator(
                      color: kSecondaryColor,
                    ),
                  ),
                )
              : const Text(
                  'Add',
                  style: const TextStyle(
                    fontFamily: kFont,
                    color: kSecondaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
