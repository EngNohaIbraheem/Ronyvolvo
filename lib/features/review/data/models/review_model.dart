import 'package:fatto/exports.dart';

class ReviewModel {
  final String title;
  final String subTitle;
  final String date;
  final Widget? widget;
  // final bool? isFinished;
  // final bool? inProgress;

  const ReviewModel({
    this.widget,
    required this.title,
    required this.subTitle,
    required this.date,
    // this.inProgress = false,
    // this.isFinished = false
  });
}
