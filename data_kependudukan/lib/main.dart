import 'package:data_kependudukan/screen/data_diri.dart';
import 'package:data_kependudukan/screen/input_new_data.dart';
import 'package:data_kependudukan/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:data_kependudukan/screen/data_list.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Kependudukan',
      theme: ThemeData(
        primaryColor: const Color(0xFF227471),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color(0xFF227471),
        ),
      ),
      home: const Login(),
    );
  }
}
