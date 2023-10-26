import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class ReviewDialog extends StatelessWidget {
  const ReviewDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingDialog(
      title: Text(
        'Type A Review For This Product',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?

      // your app's logo?
      submitButtonText: 'Send',
      commentHint: 'Type Here',
      onSubmitted: (RatingDialogResponse response) {},
    );
  }
}
