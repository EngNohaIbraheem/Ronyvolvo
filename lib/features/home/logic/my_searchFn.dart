// import 'package:fatto/exports.dart';
//
// class SearchedFun extends StatefulWidget {
//   final String searchText;
//   const SearchedFun({ required this.searchText , super.key});
//
//   @override
//   State<SearchedFun> createState() => _SearchedFunState();
// }
//
// class _SearchedFunState extends State<SearchedFun> {
//   //final objRepo _dataRepo = DataRepo(Constants());
//   //late List<obj> _objList = [];
//   List<obj> _searchResults = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadData();
//   }
//
//   Future<void> _loadData() async {
//     try {
//       List<obj> objList = await _dataRepo.fetchobj();
//       setState(() {
//         _objList = objList;
//         _searchResults = objList;
//       });
//     } catch (e) {
//       print('Error loading data: $e');
//     }
//   }
//
//   void _search(String query) {
//     query = query.toLowerCase();
//     setState(() {
//       _searchResults = _objList.where((obj) {
//         final lowerCaseName = obj.name.toLowerCase();
//         // Split the query into words and check if any word is present in the obj name
//         final queryWords = query.split(' ');
//         return queryWords.any((word) => lowerCaseName.contains(word));
//       }).toList();
//     });
//   }
//
//   void _clearSearchResults() {
//     setState(() {
//       _searchResults = [];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.amber,
//         centerTitle: true,
//         title: const Text(
//           "Swah",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Expanded(
//         child: objListWidget(
//           objsList: _searchResults.isEmpty ? _objList : _searchResults,
//           constants: _constants,
//         ),
//       ),
//     );
//   }
// }
