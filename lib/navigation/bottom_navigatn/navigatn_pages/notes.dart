import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../constants/constants.dart';
import '../../../dio_api_flutter/core/user_repository.dart';
import '../../../dio_api_flutter/modal/uer_modal.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch API with Dio"),
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: FutureBuilder<List<UserModel>>(
        future: UserRepository().getUser(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final value = snapshot.data![index];

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value.avatar),
                    ),
                    title: Text(value.firstname + value.lastname),
                    subtitle: Text(value.firstname),
                  );
                });
          } else {
            return Shimmer.fromColors(
                baseColor: AppColors.GREY,
                highlightColor: AppColors.DARK_LIGHT,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    margin: Padding_1,
                    decoration: kListDecoration,
                    height: Height4,
                    width: Width1,
                  ),
                ));
          }
        },
      ),
    );
  }
}
