import 'package:fatto/exports.dart';
import '../../../../config/routes/app_routes_helper.dart';
import '../widgets/Promotion_rectangle .dart';
import '../widgets/Promotion_rectangle 2.dart';
import '../widgets/countdownTimer.dart';
import '../widgets/my_cards.dart';
import '../widgets/my_navButtom.dart';
import '../widgets/my_searchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const coverImagePath = AppAssets.cover;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: MySearchBar(
            hintText: " search what you need ",
            //onSubmitted: _handelSearch,
            //onChanged: _filterObj)
          ),
        ),
        // -----------------------------------------camera Icon-----------
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(AppAssets.cameraFill),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          //----------------------------------------------cover photo-----------

          SizedBox(
            height: 165,
            width: double.infinity,
            child: Image.asset(
              coverImagePath,
              fit: BoxFit.fitWidth,
            ),
          ),
          //----------------------------------------------Countdown Timer---------
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Text(
                  "Discount Ends in : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                CountdownTimer(),
              ],
            ),
          ),

          //-------------------------------------------------GridView for items---

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        push(context: context, route: Routes.product35);
                        // Handle tap for "Decoration" card
                        // print('Decoration card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.decorations,
                        title: "Decoration",
                        price: "400",
                        originalPrice: "456.00",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle tap for "Crochet" card
                        print('Crochet card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.crochet,
                        title: "Crochet",
                        price: "400",
                        originalPrice: "456.00",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle tap for "Wood" card
                        print('Wood card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.wood,
                        title: "Wood",
                        price: "400",
                        originalPrice: "456.00",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle tap for "Bags" card
                        print('Bags card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.bags,
                        title: "Bags",
                        price: "400",
                        originalPrice: "456.00",
                      ),
                    ),
                  ],
                ),
              )











              // SizedBox(
              //   height: 200,
              //   child:
              //       ListView(scrollDirection: Axis.horizontal,
              //           children: const [
              //
              //         MyCards(
              //           imagePath: AppAssets.decorations,
              //           title: "Decoration",
              //           price: "400",
              //           originalPrice: "456.00",
              //         ),
              //     MyCards(
              //       imagePath: AppAssets.crochet,
              //       title: "Crochet",
              //       price: "400",
              //       originalPrice: "456.00",
              //     ),
              //     MyCards(
              //       imagePath: AppAssets.wood,
              //       title: "Wood",
              //       price: "400",
              //       originalPrice: "456.00",
              //     ),
              //     MyCards(
              //       imagePath: AppAssets.bags,
              //       title: "Bags",
              //       price: "400",
              //       originalPrice: "456.00",
              //     ),
              //   ]),
              // ),
            ]),
          ),

          //-----------------------------------------------------Promotion------

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(children: [
              Text(
                "Upcoming Promotions  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          //----------------------------------------GridView for items----------

          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 200,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                PromotionRectangle(),
                SizedBox(width: 5),
                PromotionRectangle2(),
              ]),
            ),
          ),

          //--------------------------------------------Bags & watches----------

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(children: [
              Text(
                "New In Bags and watches   ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          //---------------------------------------GridView for items-----------

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              SizedBox(
                height: 179,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        // Handle tap for "Pink Bag"
                        print('Pink Bag card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.pinkBag,
                        title: "Pink Bag",
                        price: "234.90",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        push(context: context, route: Routes.product35);
                        // print('Brown Candy card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.brownCandy,
                        title: "Brown Candy",
                        price: "500",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle tap for "offWhite"
                        print('offWhite card tapped');
                        // Navigate to a new screen or perform an action
                      },
                      child: const MyCards(
                        imagePath: AppAssets.off,
                        title: "offWhite",
                        price: "344.89",
                      ),
                    ),
                  ],
                ),
              )

              // SizedBox(
              //   height: 179,
              //   child:
              //       ListView(scrollDirection: Axis.horizontal, children: const [
              //     MyCards(
              //       imagePath: AppAssets.pinkBag,
              //       title: "Pink Bag",
              //       price: "234.90",
              //     ),
              //     MyCards(
              //       imagePath: AppAssets.brownCandy,
              //       title: "Brown Candy",
              //       price: "500",
              //     ),
              //     MyCards(
              //       imagePath: AppAssets.off,
              //       title: "offWhite",
              //       price: "344.89",
              //     ),
              //   ]),
              // ),
            ]),
          ),

          //-----------------------------------------Crochet Clothes------------

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(children: [
              Text(
                "New in Crochet Clothes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          //-------------------------------------------GridView for items-------

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              SizedBox(
                height: 200,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  MyCards(
                    imagePath: AppAssets.shawl,
                    title: "Shawl",
                    price: "234.90",
                  ),
                  MyCards(
                    imagePath: AppAssets.cardigan,
                    title: "Cardigan",
                    price: "500",
                  ),
                  MyCards(
                    imagePath: AppAssets.blouse,
                    title: "Blouse",
                    price: "344.86",
                  ),
                ]),
              ),
            ]),
          ),

          //--------------------------------------------antiques & ceramic------

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(children: [
              Text(
                "New in Antiques & Ceramic  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          //--------------------------------------------GridView for items------

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              SizedBox(
                height: 200,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  MyCards(
                    imagePath: AppAssets.resin,
                    title: "Resin",
                    price: "234.90",
                  ),
                  MyCards(
                    imagePath: AppAssets.pottery,
                    title: "Pottery",
                    price: "500",
                  ),
                  MyCards(
                    imagePath: AppAssets.potteryClay,
                    title: "Pottery Clay",
                    price: "344.86",
                  ),
                ]),
              ),
            ]),
          ),

          //--------------------------------------Wedding & Social events-------

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(children: [
              Text(
                "New in Wedding & Social events ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          //-----------------------------------------GridView for items---------

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              SizedBox(
                height: 200,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  MyCards(
                    imagePath: AppAssets.cards,
                    title: "Wedding Cards",
                    price: "234.90",
                  ),
                  MyCards(
                    imagePath: AppAssets.cakes,
                    title: "Wedding Cakes",
                    price: "500",
                  ),
                  MyCards(
                    imagePath: AppAssets.eventOrganizing,
                    title: "Event Organizing",
                    price: "344.86",
                  ),
                ]),
              ),
            ]),
          ),

          //------------------------------------------Software Services---------

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(children: [
              Text(
                "Software Services",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          //------------------------------------------GridView for items--------

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              SizedBox(
                height: 200,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  MyCards(
                    imagePath: AppAssets.webDesign,
                    title: "website Design",
                    price: "234.90",
                  ),
                  MyCards(
                    imagePath: AppAssets.development,
                    title: "Development",
                    price: "500",
                  ),
                  MyCards(
                    imagePath: AppAssets.graphicDesign,
                    title: "Graphic Design",
                    price: "344.86",
                  ),
                ]),
              ),
            ]),
          ),
        ]),
      ),
      bottomNavigationBar: const MyNavButtom(),
    );
  }
}

// TODO 2 : ask about colors and  font ?
// TODO 3 : ask about promotions Stack or pics  ?
