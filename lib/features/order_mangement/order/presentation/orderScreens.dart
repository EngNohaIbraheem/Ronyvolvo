import 'package:fatto/exports.dart';
import 'package:fatto/features/order_mangement/order/logic/my_stepper_logic.dart';
import 'package:fatto/features/order_mangement/order/presentation/reusableWidget/my_stepperUi.dart';

class OrderScreens extends StatefulWidget {
  const OrderScreens({super.key});

  @override
  _OrderScreensState createState() => _OrderScreensState();
}

class _OrderScreensState extends State<OrderScreens> {
  final MyStepperLogic _stepperLogic = MyStepperLogic();
  int? _selectedOption;
  String _selectedCountryCode = '+02';
  int _deliverySubStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        //-------------------------------------------------My App Bar---------
        const CustomAppBar(
          title: "Order",
        ),
        //-------------------------------------------------------Stepper-------
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: MyStepperUI(
            step: _stepperLogic,
            activeColor: AppColors.primaryColor,
            inactiveColor: AppColors.mediumGray,
            completedColor: AppColors.mediumGray,
          ),
        ),
        //------------------------------------------- move to the next screen---
        Expanded(
          child: _buildStepContent(),
        ),
      ]),
    );
  }

  Widget _buildStepContent() {
    if (_stepperLogic.currentStep == 0) {
      return _buildDeliveryOptions();
    } else if (_stepperLogic.currentStep == 1) {
      return _buildFormStep();
    } else if (_stepperLogic.currentStep == 2) {
      return _buildOrderCheckStep();
    }
    return Container();
  }

  Widget _buildDeliveryOptions() {
    if (_deliverySubStep == 0) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'SELECT SHIPPING',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            RadioListTile<int>(
              value: 0,
              activeColor: AppColors.primaryColor,
              groupValue: _selectedOption,
              title: const Text('Delivery to my address'),
              subtitle: const Text('Home / office address'),
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                  _deliverySubStep =
                      1; // Move to the form step within the delivery step ( stepper stays 1)
                });
              },
            ),
            RadioListTile<int>(
              value: 1,
              activeColor: AppColors.primaryColor,
              groupValue: _selectedOption,
              title: const Text('Delivery to another address'),
              subtitle: const Text('Home / office address'),
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                  _deliverySubStep =
                      1; // Move to the form step within the delivery step
                });
              },
            ),
          ],
        ),
      );
    } else if (_deliverySubStep == 1) {
      return _buildFormStep();
    }
    return Container(
      child: _buildOrderCheckStep(),
    );
  }

  Widget _buildFormStep() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text(
                  'Enter the delivery address',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'State / provinces',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'City / district',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Postal code',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: DropdownButton<String>(
                      value: _selectedCountryCode,
                      items: <String>['+02', '+03']
                          .map((String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                          .toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedCountryCode = newValue!;
                        });
                      },
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              CustomButton(
                text: "Save",
                onPressed: () {
                  setState(() {
                    _deliverySubStep = 2; // but ahmed screens
                    // _stepperLogic.nextStep();
                  });
                },
              ),
            ]),
      ),
    );
  }

  Widget _buildOrderCheckStep() {
    return Center(
      child: Column(children: [
        const Text('screens from Ahmed '),
        CustomButton(
            text: "Just a try ",
            onPressed: () {
              setState(() {
                _stepperLogic.nextStep();
              });
            })
      ]),
      // Make _deliverySubStep = 3
    );
  }
}
