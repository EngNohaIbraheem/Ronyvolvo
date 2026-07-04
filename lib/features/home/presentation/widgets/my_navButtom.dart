import 'package:fatto/exports.dart';
import 'package:fatto/features/cart/presentation/cart_screen.dart';
import 'package:fatto/features/favorite/persentation/favorite_screen.dart';
import 'package:fatto/features/home/presentation/screens/homeScreen.dart';
import 'package:fatto/features/my_account/presentation/my_account_screen.dart';

import '../../../profile_screens/presentation/screens/profile_screen.dart';

class MyNavButtom extends StatefulWidget {
  const MyNavButtom({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyNavButtom> {
  int _selectedIndex = 0;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Home Page'),
  //   Text('Cart Page'),
  //   Text('Favorites Page'),
  //   Text('Account Page'),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FavoriteScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MyAccountScreenProfilelo()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.shop),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.account),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.deepOrange.shade400,
      onTap: _onItemTapped,
    );
  }
}
