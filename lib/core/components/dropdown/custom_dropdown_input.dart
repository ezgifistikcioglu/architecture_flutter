import 'package:flutter/material.dart';

class CustomDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final List<T> options;
  final T value;
  final icon;
  final T Function(T) getLabel;
  final ValueChanged<T?>? onChanged;

  CustomDropdownInput(
      {Key? key,
      this.hintText = 'Please select an Option',
      this.options = const [],
      required this.value,
      required this.getLabel,
      this.onChanged,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      builder: (FormFieldState<T> field) {
        return InputDecorator(
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            labelText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
          isEmpty: value == null || value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              isDense: true,
              onChanged: onChanged,
              items: options.map((T value) {
                return DropdownMenuItem<T>(
                  value: value,
                  child: Text("$value"),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
