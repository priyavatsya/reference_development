import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

import '../../../../dio_http_intrceptors/modals/user.dart';
import '../../../../dio_http_intrceptors/networks/dio/dio_client.dart';
import '../../../../dio_http_intrceptors/widgets/data_input_field.dart';
import '../../../../dio_http_intrceptors/widgets/output_error.dart';
import '../../../../dio_http_intrceptors/widgets/output_panel.dart';
import '../../../../dio_http_intrceptors/widgets/radio_input_field.dart';

class POSTMethodTile extends StatefulWidget {
  const POSTMethodTile({Key? key, required this.dioClient}) : super(key: key);
  final DioClient dioClient;

  @override
  State<POSTMethodTile> createState() => _POSTMethodTileState();
}

class _POSTMethodTileState extends State<POSTMethodTile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  Gender gender = Gender.male;
  Status status = Status.active;

  bool isLoading = false;
  User? createdUser;
  String? error;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('POST Method'),
      childrenPadding: Padding_1,
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text('Name:', style: TextStyle(fontSize: FontSize2))),
            Expanded(
              flex: 3,
              child: DataInputField(
                controller: _nameController,
                inputType: TextInputType.text,
              ),
            ),
          ],
        ),
        SizedBox(height: Height5),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text('Email:', style: TextStyle(fontSize: FontSize2))),
            Expanded(
              flex: 3,
              child: DataInputField(
                controller: _emailController,
                inputType: TextInputType.emailAddress,
              ),
            ),
          ],
        ),
        SizedBox(height: Height5),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text('Gender:', style: TextStyle(fontSize: FontSize2))),
            Expanded(
              flex: 3,
              child: GenderRadioInputField(
                genderValue: gender,
                onChanged: (value) => setState(() => gender = value!),
              ),
            ),
          ],
        ),
        SizedBox(height: Height5),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text('Status:', style: TextStyle(fontSize: FontSize2))),
            Expanded(
              flex: 3,
              child: StatusRadioInputField(
                statusValue: status,
                onChanged: (value) => setState(() => status = value!),
              ),
            ),
          ],
        ),
        SizedBox(height: Height5),
        ElevatedButton(
          onPressed: () async {
            setState(() => isLoading = true);
            final user = User(
              name: _nameController.text,
              email: _emailController.text,
              gender: gender,
              status: status,
            );

            try {
              final responseUser =
                  await widget.dioClient.createUser(user: user);
              setState(() => createdUser = responseUser);
            } catch (err) {
              setState(() => error = err.toString());
            }

            setState(() => isLoading = false);
          },
          child: const Text('POST'),
        ),
        SizedBox(height: Height5),
        isLoading
            ? const OutputPanel(showLoading: true)
            : createdUser != null
                ? OutputPanel(user: createdUser)
                : error != null
                    ? OutputError(errorMessage: error!)
                    : const OutputPanel(),
        SizedBox(height: Height5),
      ],
    );
  }
}
