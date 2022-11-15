import 'package:flutter/material.dart';
import '../modals/user.dart';

class GenderRadioInputField extends StatelessWidget {
  const GenderRadioInputField({
    Key? key,
    required this.genderValue,
    required this.onChanged,
  }) : super(key: key);
  final Gender genderValue;
  final Function(Gender?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: Row(
        children: [
          Radio<Gender>(
            value: Gender.male,
            groupValue: genderValue,
            onChanged: onChanged,
          ),
          const Text('Male', style: TextStyle(fontSize: 15)),
          const SizedBox(width: 10.0),
          Radio<Gender>(
            value: Gender.female,
            groupValue: genderValue,
            onChanged: onChanged,
          ),
          const Text('Female', style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}

class StatusRadioInputField extends StatelessWidget {
  const StatusRadioInputField({
    Key? key,
    required this.statusValue,
    required this.onChanged,
  }) : super(key: key);
  final Status statusValue;
  final Function(Status?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: Row(
        children: [
          Radio<Status>(
            value: Status.active,
            groupValue: statusValue,
            onChanged: onChanged,
          ),
          const Text('Active', style: TextStyle(fontSize: 15)),
          const SizedBox(width: 10.0),
          Radio<Status>(
            value: Status.inactive,
            groupValue: statusValue,
            onChanged: onChanged,
          ),
          const Text('Inactive', style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
