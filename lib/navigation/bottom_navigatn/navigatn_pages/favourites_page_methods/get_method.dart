import 'package:flutter/material.dart';
import 'package:reference_development/constants/constants.dart';

import '../../../../dio_http_intrceptors/modals/user.dart';
import '../../../../dio_http_intrceptors/networks/dio/dio_client.dart';
import '../../../../dio_http_intrceptors/widgets/data_input_field.dart';
import '../../../../dio_http_intrceptors/widgets/output_error.dart';
import '../../../../dio_http_intrceptors/widgets/output_panel.dart';

class GETMethodTile extends StatefulWidget {
  const GETMethodTile({Key? key, required this.dioClient}) : super(key: key);
  final DioClient dioClient;

  @override
  State<GETMethodTile> createState() => _GETMethodTileState();
}

class _GETMethodTileState extends State<GETMethodTile> {
  final TextEditingController _idController = TextEditingController();
  int? userId;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('GET Method'),
      childrenPadding: Padding_1,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Enter the ID of the user:',
              style: TextStyle(fontSize: FontSize2),
            ),
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
            : FutureBuilder<User?>(
                future: widget.dioClient.getUser(id: userId!),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const OutputPanel(showLoading: true);
                  } else if (snapshot.hasError) {
                    return OutputError(errorMessage: snapshot.error.toString());
                  } else if (snapshot.hasData) {
                    return OutputPanel(user: snapshot.data);
                  } else {
                    return const OutputPanel();
                  }
                },
              ),
        SizedBox(height: Height5),
      ],
    );
  }
}
