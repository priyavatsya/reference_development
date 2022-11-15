import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

import '../../../../dio_http_intrceptors/networks/dio/dio_client.dart';
import '../../../../dio_http_intrceptors/widgets/data_input_field.dart';
import '../../../../dio_http_intrceptors/widgets/output_error.dart';
import '../../../../dio_http_intrceptors/widgets/output_panel.dart';
import '../../../../dio_http_intrceptors/widgets/output_success.dart';

class DELETEMethodTile extends StatefulWidget {
  const DELETEMethodTile({Key? key, required this.dioClient}) : super(key: key);
  final DioClient dioClient;

  @override
  State<DELETEMethodTile> createState() => _DELETEMethodTileState();
}

class _DELETEMethodTileState extends State<DELETEMethodTile> {
  final TextEditingController _idController = TextEditingController();
  int? userId;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('DELETE Method'),
      childrenPadding: Padding_1,
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Enter the ID of the user:',
                style: TextStyle(fontSize: FontSize2)),
            SizedBox(
              width: Width1,
              child: DataInputField(
                controller: _idController,
                inputType: TextInputType.number,
                onSubmitted: (id) => setState(() => userId = int.parse(id)),
              ),
            ),
          ],
        ),
        SizedBox(height: Height5),
        userId == null
            ? const OutputPanel()
            : FutureBuilder<void>(
                future: widget.dioClient.deleteUser(id: userId!),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const OutputPanel(showLoading: true);
                  } else if (snapshot.hasError) {
                    return OutputError(errorMessage: snapshot.error.toString());
                  } else {
                    return const OutputSuccess(
                        successMessage: 'User deleted successfully!');
                  }
                },
              ),
        SizedBox(height: Height5),
      ],
    );
  }
}
