import 'package:flutter/material.dart';

enum Fields { email, password }

class LoginTextField extends StatefulWidget {
  final Fields fields;
  final TextEditingController? passwordController;
  final TextEditingController? emailController;

  const LoginTextField({
    super.key,
    required this.fields,
    this.passwordController,
    this.emailController,
  });

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.fields == Fields.email
          ? widget.emailController
          : widget.passwordController,
      obscureText: widget.fields == Fields.password
          ? showPassword
              ? true
              : false
          : false,
      maxLines: 1,
      textInputAction: widget.fields == Fields.email
          ? TextInputAction.next
          : TextInputAction.done,
      decoration: InputDecoration(
        hintText: widget.fields == Fields.email ? "Email" : "Password",
        prefixIcon: widget.fields == Fields.email
            ? const Icon(Icons.email)
            : const Icon(Icons.password),
        suffixIcon: widget.fields == Fields.password
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: !showPassword
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              )
            : const SizedBox(),
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (widget.fields == Fields.email) {
          if (value == null) {
            return 'this field cannot be empty!';
          } else if (!value.contains("@")) {
            return 'please provide a valid email address';
          } else {
            return null;
          }
        } else {
          if (value == null) {
            return 'this field cannot be empty!';
          } else {
            return null;
          }
        }
      },
    );
  }
}
