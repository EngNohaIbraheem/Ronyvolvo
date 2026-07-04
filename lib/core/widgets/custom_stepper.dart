

import '../../exports.dart';

class CustomStepper extends StatelessWidget {
  final List<String> steps;
  final int activeStep;

  const CustomStepper({
    super.key,
    required this.steps,
    required this.activeStep,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double availableWidth = constraints.maxWidth;
        double stepWidth = 80;
        double separatorWidth =
            (availableWidth - stepWidth * steps.length) / (steps.length - 1);

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(steps.length, (index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StepIndicator(
                  title: steps[index],
                  isActive: index == activeStep,
                  stepNumber: (index + 1).toString(),
                ),
                if (index < steps.length - 1)
                  Align(
                    child: Container(
                      width: separatorWidth,
                      height: 1,
                      color: const Color(0xFF777777),
                      margin: const EdgeInsets.only(
                          bottom: 20, left: 10, right: 10),
                    ),
                  ),
              ],
            );
          }),
        );
      },
    );
  }
}

class StepIndicator extends StatelessWidget {
  final String title;
  final bool isActive;
  final String stepNumber;

  const StepIndicator({
    super.key,
    required this.title,
    required this.isActive,
    required this.stepNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 15,
          backgroundColor: isActive ? AppColors.primaryColor : Colors.grey,
          child: Text(
            stepNumber,
            style:
                AppStyles.styleInterMedium13.copyWith(color: AppColors.white),
          ),
        ),
        4.vs,
        Text(
          title,
          style: AppStyles.styleInterMedium13
              .copyWith(color: isActive ? AppColors.primaryColor : Colors.grey),
        ),
      ],
    );
  }
}
