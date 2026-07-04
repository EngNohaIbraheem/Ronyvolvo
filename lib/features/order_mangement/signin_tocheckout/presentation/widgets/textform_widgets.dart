import '../../../../../exports.dart';

class SignUpTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;

  const SignUpTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
  });

  @override
  SignUpTextFormFieldState createState() => SignUpTextFormFieldState();
}

class SignUpTextFormFieldState extends State<SignUpTextFormField> {
  final FocusNode focusNode = FocusNode();
  bool isActive = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isActive = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.93,
      height: 55.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: isActive ? const Color(0xFFBD6633) : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        focusNode: focusNode,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: AppStyles.stylePoppinsRegular14.copyWith(
            color: const Color(0xFFA3A3A3),
          ),
        ),
        textAlignVertical: TextAlignVertical.center,
        validator: widget.validator,
      ),
    );
  }
}

class PasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator; // Add validator parameter

  const PasswordTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
  });

  @override
  PasswordTextFormFieldState createState() => PasswordTextFormFieldState();
}

class PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  final FocusNode focusNode = FocusNode();
  bool isActive = false;

  void toggleVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isActive = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.93,
      height: 55.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: isActive ? const Color(0xFFBD6633) : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText,
        focusNode: focusNode,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: AppStyles.stylePoppinsRegular14.copyWith(
            color: const Color(0xFFA3A3A3),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey[600],
            ),
            onPressed: toggleVisibility,
          ),
        ),
        textAlignVertical: TextAlignVertical.center,
        validator: widget.validator,
      ),
    );
  }
}
