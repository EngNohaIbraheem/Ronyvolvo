import 'package:fatto/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class CustomRatingBar extends StatefulWidget {
   CustomRatingBar({super.key, this.starColor=AppColors.white,this.rating=0});
 double? rating;
final Color? starColor;
  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {

  @override
  Widget build(BuildContext context) {
    return   PannableRatingBar(
                      rate:widget.rating!,
                      items: List.generate(
                          5,
                          (index) =>  RatingWidget(
                                selectedColor: AppColors.starColor,
                                child: SizedBox(
                                  height: 42,
                                  width: 42,
                                  child: Stack(
                                    children: [
                                    const  Center(
                                        child: Icon(Icons.star,
                                            size: 42,
                                            color: AppColors.starColor),
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.star,
                                          size: 35,
                                          color:widget.starColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                      onChanged: (value) {
                        setState(() {
                         widget.rating = value;
                        });
                      },
                    );
  }
}