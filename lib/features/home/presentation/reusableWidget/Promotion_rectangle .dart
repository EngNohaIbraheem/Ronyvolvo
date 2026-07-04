import 'package:fatto/exports.dart';

class PromotionRectangle extends StatelessWidget {
  const PromotionRectangle({super.key});

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
                colors: [Colors.deepPurple, Colors.pinkAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          //-----------------------------------------Image in center----------
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 100,
                height: 140,
                child: Image.asset(
                  AppAssets.promotionFashion,
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
                colors: [Colors.grey.shade500, Colors.grey.shade700],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Column(children: [
                    Text(
                      '  Extra 37% Off',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' + Cashback 15%',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Text(
                    '24-26 December',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
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
  }
}
