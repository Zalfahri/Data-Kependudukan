import 'package:data_kependudukan/screen/input_new_data.dart';
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
        title: const Text('List Data Penduduk'),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: const [
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InputNewData(),
            ),
          );
        },
        backgroundColor: const Color(0xFF227471),
        child: const Icon(Icons.add),
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
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF227471),
            ),
            color: const Color(0xFF217777),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1, height: 0, color: Colors.black),
              const SizedBox(height: 10),
              Text(
                tahun,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            pekerjaan,
            style: const TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF227471),
            ),
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF217777),
          ),
        )
      ],
    );
  }
}
