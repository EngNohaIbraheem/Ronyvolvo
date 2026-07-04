// import 'package:fatto/core/widgets/custom_stepper.dart';
// import 'package:fatto/exports.dart';

// class PaymentScreen extends StatefulWidget {
//   const PaymentScreen({super.key});

//   @override
//   _PaymentScreenState createState() => _PaymentScreenState();
// }

// class _PaymentScreenState extends State<PaymentScreen> {
//   @override
//   Widget build(BuildContext context) {
//     List<String> steps = ['Delivery', 'Payment', 'Order Check'];
//     int activeStep = 1;
//     return Scaffold(
//       body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
//         //--------------------------------------------------appBar------------
//         const CustomAppBar(
//           title: "",
//         ),

//         //--------------------------------------------------Stepper-------------
//         CustomStepper(
//           steps: steps,
//           activeStep: activeStep,
//         ),

//         const SizedBox(
//           height: 16,
//         ),

//         Center(
//           child: Text(
//             "CHOOSE PAYMENT",
//             style: AppStyles.styleInterSemiBold16,
//           ),
//         ),

//         //-----------------------------------------------payment choices--------
//         SizedBox(height: 16.0),
//         Expanded(
//           child: ListView(children: [
//             ExpansionTile(
//                 title: const Text('Credit / Debit Card'),
//                 subtitle: const Text('Visa, Master Card'),
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: SingleChildScrollView(
//                       child: Column(children: [
//                         Container(
//                           height: 33.h,
//                           width: 350.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             color: AppColors.primaryColor,
//                           ),
//                           child: Center(
//                             child: Row(children: [
//                               SvgPicture.asset(
//                                 AppAssets.lockIcon,
//                               ),
//                               Text(
//                                   "This is a secure 128-bit SSL Encrypted payment.You're safe",
//                                   style: AppStyles.styleInterRegular12
//                                       .copyWith(color: AppColors.white)),
//                             ]),
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Image.asset(AppAssets.card1),
//                               Image.asset(AppAssets.card2),
//                               Image.asset(AppAssets.card3),
//                               Image.asset(AppAssets.card4),
//                             ]),
//                         const TextField(
//                           decoration: InputDecoration(
//                             labelText: 'Card Number',
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const TextField(
//                           decoration: InputDecoration(
//                             labelText: 'Name On Card',
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Row(
//                           children: [
//                             Expanded(
//                               child: ExpansionTile(
//                                 title: Text('Exp MM/YY'),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Expanded(
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                   labelText: 'CVV',
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         CustomButton(
//                           onPressed: () {
//                             // Handle order check
//                           },
//                           text: 'ORDER CHECK',
//                         ),
//                       ]),
//                     ),
//                   ),
//                 ]),

//             // TODO 2: Ask for sarah's Design
//             const ExpansionTile(title: Text('Via bank transfer'), children: [
//               // Bank transfer details will be placed here
//             ]),

//             const ExpansionTile(title: Text('Pay on the spot'), children: [
//               // Pay on the spot details will be placed here
//             ]),
//           ]),
//         ),
//       ]),
//     );
//   }
// }

// // Widget _buildCreditCardForm() {
// //   return Column(
// //     crossAxisAlignment: CrossAxisAlignment.start,
// //     children: <Widget>[
// //       Container(
// //         padding: const EdgeInsets.all(8.0),
// //         color: AppColors.primaryColor,
// //         child: Row(
// //           children: [
// //             SvgPicture.asset(AppAssets.lockIcon),
// //             const Text(
// //               'This is a secure 128-bit SSL Encrypted payment. You\'re safe',
// //               style: TextStyle(color: Colors.orange),
// //             ),
// //           ],
// //         ),
// //       ),
// //       const SizedBox(
// //         height: 16,
// //       ),

// //
// //       //TODO : ask for Pic or hand gesture..
// //       const TextField(
// //         decoration: InputDecoration(labelText: 'Card Number'),
// //         keyboardType: TextInputType.number,
// //       ),
// //       const TextField(
// //         decoration: InputDecoration(labelText: 'Name On Card'),
// //       ),
// //       const Row(
// //         children: <Widget>[
// //           Expanded(
// //             child: TextField(
// //               decoration: InputDecoration(labelText: 'Exp MM/YYYY'),
// //               keyboardType: TextInputType.datetime,
// //             ),
// //           ),
// //           SizedBox(width: 16.0),
// //           Expanded(
// //             child: TextField(
// //               decoration: InputDecoration(labelText: 'CVV'),
// //               keyboardType: TextInputType.number,
// //             ),
// //           ),
// //         ],
// //       ),
// //       const SizedBox(height: 16.0),
// //       CustomButton(
// //         text: 'ORDER CHECK',
// //         onPressed: () {
// //           // widget.onNext();
// //         },
// //       ),
// //     ],
// //   );
// // }

// // import 'package:fatto/exports.dart';
// // import 'package:fatto/features/order_management/order/logic/my_stepper.dart';
// // import 'package:fatto/features/order_management/order/presentation/reusableWidget/custom_appbar.dart';
// // import 'package:fatto/features/order_management/order/presentation/reusableWidget/my_stepperUi.dart';
// //
// // class PaymentScreen extends StatefulWidget {
// //   const PaymentScreen({super.key});
// //
// //   // final Function onNext;
// //
// //   // const PaymentScreen({Key? key, required this.onNext}) : super(key: key);
// //
// //   @override
// //   _PaymentScreenState createState() => _PaymentScreenState();
// // }
// //
// // class _PaymentScreenState extends State<PaymentScreen> {
// //   String? _selectedPaymentMethod;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: <Widget>[
// //         const Center(
// //           child: Text(
// //             'CHOOSE PAYMENT',
// //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
// //           ),
// //         ),
// //         RadioListTile<String>(
// //           title: const Text('Credit / Debit Card'),
// //           subtitle: const Text('Visa, Master Card'),
// //           value: 'Credit / Debit Card',
// //           groupValue: _selectedPaymentMethod,
// //           onChanged: (value) {
// //             setState(() {
// //               _selectedPaymentMethod = value!;
// //             });
// //           },
// //         ),
// //         _selectedPaymentMethod == 'Credit / Debit Card'
// //             ? _buildCreditCardForm()
// //             : Container(),
// //         RadioListTile<String>(
// //           title: const Text('Via bank transfer'),
// //           value: 'Via bank transfer',
// //           groupValue: _selectedPaymentMethod,
// //           onChanged: (value) {
// //             setState(() {
// //               _selectedPaymentMethod = value!;
// //             });
// //           },
// //         ),
// //         RadioListTile<String>(
// //           title: const Text('Pay on the spot'),
// //           value: 'Pay on the spot',
// //           groupValue: _selectedPaymentMethod,
// //           onChanged: (value) {
// //             setState(() {
// //               _selectedPaymentMethod = value!;
// //             });
// //           },
// //         ),
// //       ],
// //     );
// //   }
