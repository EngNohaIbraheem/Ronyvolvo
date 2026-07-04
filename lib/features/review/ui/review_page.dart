import 'package:fatto/core/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'widgets/review_body.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(isTransparent: true, child: ReviewPageBody());
  }
}
