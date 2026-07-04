import '../../../../exports.dart';

class AddressForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 16.w, vertical: 24.h),
          // padding: const EdgeInsets.all(16.0),
          child:
          TextField(
            decoration: InputDecoration(
              hintText:'Location Name ',
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              prefixIcon: Icon(Icons.location_on, // Location icon as a prefix

                // prefixIcon: Icon(Icons.location_searching,
                color: Color(0xFF007A9A),
              ),
              fillColor: Colors.grey[200],

            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 16.w, vertical: 24.h),
          // padding: const EdgeInsets.all(16.0),
          child:
          TextField(
            decoration: InputDecoration(
              hintText:'Location Adress ',
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              prefixIcon: Icon(Icons.location_city_rounded,
                color: Color(0xFF007A9A),
              ),
              fillColor: Colors.grey[200],

            ),
          ),

        ),

        // Expanded(
        //   flex: 2,
        //   child: CustomButton(
        //     borderRadius: 8.r,
        //     text: 'Next',
        //     onPressed: () {
        //       // OnBoardingSlider.pageController.nextPage(
        //       //   duration:
        //       //       const Duration(milliseconds: 300),
        //       //   curve: Curves.easeIn,
        //       // );
        //       push(
        //           context: context,
        //           route: Routes.loginRoute);
        //     },
        //   ),
        // ),


      ],
    );

  }
}
