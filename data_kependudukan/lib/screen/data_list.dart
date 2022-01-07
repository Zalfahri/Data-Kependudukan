import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  const DataList({Key? key}) : super(key: key);

  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Data Penduduk'),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          LabelDataList(
            nama: 'Daniel',
            tahun: '8 Tahun',
            pekerjaan: 'Pelajar',
          ),
          SizedBox(height: 20),
          LabelDataList(
            nama: 'Dion',
            tahun: '8 Tahun',
            pekerjaan: 'Pelajar',
          ),
          SizedBox(height: 20),
          LabelDataList(
            nama: 'Javan',
            tahun: '8 Tahun',
            pekerjaan: 'Pelajar',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF227471),
      ),
    );
  }
}

class LabelDataList extends StatelessWidget {
  const LabelDataList({
    Key? key,
    required this.nama,
    required this.tahun,
    required this.pekerjaan,
  }) : super(key: key);
  final String nama;
  final String tahun;
  final String pekerjaan;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF227471),
            ),
            color: Color(0xFF217777),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height: 10),
              Divider(thickness: 1, height: 0, color: Colors.black),
              SizedBox(height: 10),
              Text(
                tahun,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            pekerjaan,
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF227471),
              ),
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF217777)),
        )
      ],
    );
  }
}
