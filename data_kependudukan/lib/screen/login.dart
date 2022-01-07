import 'package:data_kependudukan/screen/input_new_data.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nama = TextEditingController();
  final TextEditingController nik = TextEditingController();

  void onLogin() {
    setState(
      () {
        if (nama.text == 'fahri' && nik.text == '2411') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputNewData(),
            ),
          );
        } else {
          SnackBar snackBar = SnackBar(
            content: Text('Nama atau NIK salah'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(50),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                  image: AssetImage('asset/bolang.png'),
                  height: 300,
                  width: 500),
              LabelTextField(
                labelTextField: 'Nama',
                textEdit: nama,
              ),
              const SizedBox(height: 30),
              LabelTextField(
                labelTextField: 'NIK',
                textEdit: nik,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onLogin,
                child: const Text('Login'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF227471)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    Key? key,
    required this.labelTextField,
    required this.textEdit,
  }) : super(key: key);
  final String labelTextField;
  final TextEditingController textEdit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelTextField,
          style: TextStyle(
            color: Color(0xFF227471),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          controller: textEdit,
          decoration: InputDecoration(
            hintText: labelTextField,
            hintStyle: TextStyle(color: Color(0XFF227471)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF227471)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF227471)),
            ),
          ),
        )
      ],
    );
  }
}
