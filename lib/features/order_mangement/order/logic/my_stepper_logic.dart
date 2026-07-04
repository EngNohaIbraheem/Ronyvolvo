import 'package:fatto/exports.dart';

class MyStepperLogic extends ChangeNotifier {
  int _currentStep = 0;

  int get currentStep => _currentStep;

  void onStepTapped(int step) {
    _currentStep = step;
    notifyListeners();
  }

  void nextStep() {
    if (_currentStep < 2) {
      _currentStep += 1;
      notifyListeners();
    }
  }
}
