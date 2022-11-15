import 'package:flutter/material.dart';

import '../../../dio_http_intrceptors/networks/dio/dio_client.dart';
import 'favourites_page_methods/delete_method.dart';
import 'favourites_page_methods/get_method.dart';
import 'favourites_page_methods/post_method.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DioClient dioClient = DioClient();

    return Scaffold(
      appBar: AppBar(
        title: const Text('API example'),
        leading: Icon(
          Icons.menu,
        ),
        centerTitle: true,
        //elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GETMethodTile(dioClient: dioClient),
            POSTMethodTile(dioClient: dioClient),
            DELETEMethodTile(dioClient: dioClient),
          ],
        ),
      ),
    );
  }
}
