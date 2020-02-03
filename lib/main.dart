import 'package:flutter/material.dart';
import 'package:ncov_2019_app_flutter/app/api/api.dart';
import 'package:ncov_2019_app_flutter/app/api/api_repository.dart';
import 'package:ncov_2019_app_flutter/app/api/api_service.dart';
import 'package:ncov_2019_app_flutter/app/dashboard.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<APIRepository>(
      create: (_) => APIRepository(APIService(API.production())),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: Dashboard(),
      ),
    );
  }
}
