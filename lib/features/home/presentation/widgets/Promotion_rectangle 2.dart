import 'package:fatto/exports.dart';

class PromotionRectangle2 extends StatelessWidget {
  const PromotionRectangle2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //----------------------------Left Rec---------------------------------

        Stack(children: [
          //-------------------------Background Color------------------------
          Container(
            width: 150,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.brown, Colors.brown],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          //-----------------------------------------Image in center----------
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                height: 140,
                child: Image.asset(
                  AppAssets.promotionMakeup,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]),

        // -------------------------------------Space --------------------------

        const SizedBox(width: 1.0),

        //-------------------------------------right Rec------------------------

        Stack(children: [
          Container(
            width: 150,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.tealAccent.shade200,
                  Colors.tealAccent.shade200
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(children: [
                  Text(
                    '  Promo up to 15% For Mybeline \n MAGNUM ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    ' Enjoy special promotion for you from selected brands ',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '25-26 December',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ]),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    //  action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange.shade500,
                  ),
                  child: const Text(
                    'Remind me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
        ]),
      ],
    );
  }
}

//   Container(
//   padding: const EdgeInsets.all(16.0),
//   width: 400,
//   height: 200,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 7,
//         offset: const Offset(0, 3),
//       ),
//     ],
//   ),
//   child:
// );
