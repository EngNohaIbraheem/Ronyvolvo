import 'package:fatto/features/Auth/login/presentation/logic/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';
import '../widgets/singin_body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const CustomBackground(
        isTransparent: false,
        child: SingleChildScrollView(
          child: SignInBody(),
        ),
      ),
    );
  }
}
