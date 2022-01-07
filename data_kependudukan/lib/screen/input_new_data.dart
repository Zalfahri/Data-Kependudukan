// ignore_for_file: camel_case_types

import 'package:data_kependudukan/model/input_data_model.dart';
import 'package:data_kependudukan/screen/data_diri.dart';
import 'package:flutter/material.dart';

class InputNewData extends StatefulWidget {
  const InputNewData({Key? key}) : super(key: key);

  @override
  _InputNewDataState createState() => _InputNewDataState();
}

class _InputNewDataState extends State<InputNewData> {
  String jenisKelamin = 'laki-laki';
  String alamat = 'alamat';

  final textKey = GlobalKey<FormState>();
  final TextEditingController namaLengkap = TextEditingController();
  final TextEditingController nik = TextEditingController();
  final TextEditingController kewarganegaraan = TextEditingController();
  final TextEditingController sukuBangsa = TextEditingController();
  final TextEditingController agama = TextEditingController();
  final TextEditingController tempatLahir = TextEditingController();
  final TextEditingController tanggalLahir = TextEditingController();
  final TextEditingController jalanDukuhBlok = TextEditingController();
  final TextEditingController nomor = TextEditingController();
  final TextEditingController rt = TextEditingController();
  final TextEditingController rw = TextEditingController();
  final TextEditingController kelurahanDesa = TextEditingController();
  final TextEditingController kecamatan = TextEditingController();
  final TextEditingController kabupaten = TextEditingController();
  final TextEditingController provinsi = TextEditingController();
  final TextEditingController lamaTinggal = TextEditingController();
  final TextEditingController tahun = TextEditingController();
  final TextEditingController statusPerkawinan = TextEditingController();
  final TextEditingController statusHubunganKeluarga = TextEditingController();
  final TextEditingController pendidikanTerakhir = TextEditingController();
  final TextEditingController pekerjaan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tambah Data Baru',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          key: textKey,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const labelRow(labelCatalog: 'Personal'),
            LabelTextField(labelText: 'Nama Lengkap', textEdit: namaLengkap),
            LabelTextField(labelText: 'NIK', textEdit: nik),
            LabelTextField(
                labelText: 'Kewarganegaraan', textEdit: kewarganegaraan),
            LabelTextField(
              labelText: 'Suku Bangsa',
              textEdit: sukuBangsa,
            ),
            LabelTextField(
              labelText: 'Agama',
              textEdit: agama,
            ),
            const SizedBox(height: 30),
            const labelRow(labelCatalog: 'Kelahiran'),
            LabelTextField(
              labelText: 'Tempat Lahir',
              textEdit: tempatLahir,
            ),
            LabelTextField(
              labelText: 'Tanggal Lahir',
              textEdit: tanggalLahir,
            ),
            const SizedBox(height: 30),
            const labelRow(labelCatalog: 'Jenis Kelamin'),
            ListTile(
              title: const Text(
                'Laki-Laki',
                style: TextStyle(color: Color(0xFF8BB4B4)),
              ),
              leading: Radio<String>(
                value: 'Laki-laki',
                groupValue: jenisKelamin,
                onChanged: (value) {
                  setState(() {
                    jenisKelamin = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Perempuan',
                  style: TextStyle(color: Color(0xFF8BB4B4))),
              leading: Radio<String>(
                value: 'Perempuan',
                groupValue: jenisKelamin,
                onChanged: (value) {
                  setState(
                    () {
                      jenisKelamin = value!;
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            const labelRow(labelCatalog: 'Alamat'),
            ListTile(
              title: const Text('Alamat Asli [Sesuai KTP]',
                  style: TextStyle(color: Color(0xFF8BB4B4))),
              leading: Radio<String>(
                value: 'Alamat asli',
                groupValue: alamat,
                onChanged: (value) {
                  setState(
                    () {
                      alamat = value!;
                    },
                  );
                },
              ),
            ),
            ListTile(
              title: const Text('Alamat Domisili',
                  style: TextStyle(color: Color(0xFF8BB4B4))),
              leading: Radio<String>(
                value: 'Alamat domisili',
                groupValue: alamat,
                onChanged: (value) {
                  setState(
                    () {
                      alamat = value!;
                    },
                  );
                },
              ),
            ),
            LabelTextField(
              labelText: 'Jalan / Dukuh / Blok',
              textEdit: jalanDukuhBlok,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  LabelRowColumn(labelRowColumn: 'Nomor', textRow: nomor),
                  SizedBox(width: 13),
                  LabelRowColumn(labelRowColumn: 'RT', textRow: rt),
                  SizedBox(width: 13),
                  LabelRowColumn(labelRowColumn: 'RW', textRow: rw),
                ],
              ),
            ),
            LabelTextField(
              labelText: 'Kelurahan / Desa',
              textEdit: kelurahanDesa,
            ),
            LabelTextField(labelText: 'Kecamatan', textEdit: kecamatan),
            LabelTextField(labelText: 'Kabupaten', textEdit: kabupaten),
            LabelTextField(labelText: 'Provinsi', textEdit: provinsi),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 30),
              child: Row(
                children: const [
                  Text(
                    'Lama Tinggal',
                    style: TextStyle(color: Color(0XFF227471)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 140),
                    child: Text(
                      'Tahun',
                      style: TextStyle(
                        color: Color(0XFF227471),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0XFF227471),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_sharp,
                          color: Color(0XFF227471),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          controller: lamaTinggal,
                          decoration: InputDecoration(
                            hintText: 'Lama Tinggal',
                            hintStyle: TextStyle(
                              color: Color(0xFF84ACAC),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_sharp,
                          color: Color(0xFF227471),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: tahun,
                    decoration: InputDecoration(
                      hintText: 'Tahun',
                      hintStyle: const TextStyle(color: Color(0xFF84ACAC)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFF227471),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            const labelRow(labelCatalog: 'Status'),
            LabelTextField(
                labelText: 'Status Prekawinan', textEdit: statusPerkawinan),
            LabelTextField(
                labelText: 'Status Hubungan Keluarga',
                textEdit: statusHubunganKeluarga),
            LabelTextField(
                labelText: 'Pendidikan Terakhir', textEdit: pendidikanTerakhir),
            LabelTextField(labelText: 'Pekerjaan', textEdit: pekerjaan),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataDiri(
                      inputDataModel: InputDataModel(
                        namaLengkap: namaLengkap.text,
                        nik: nik.text,
                        kewarganegaraan: kewarganegaraan.text,
                        sukuBangsa: sukuBangsa.text,
                        agama: agama.text,
                        tempatLahir: tempatLahir.text,
                        tanggalLahir: tanggalLahir.text,
                        jenisKelamin: jenisKelamin,
                        alamat: alamat,
                        jalanDukuhBlok: jalanDukuhBlok.text,
                        nomor: nomor.text,
                        rt: rt.text,
                        rw: rw.text,
                        kelurahanDesa: kelurahanDesa.text,
                        kecamatan: kecamatan.text,
                        kabupaten: kabupaten.text,
                        provinsi: provinsi.text,
                        lamaTinggal: lamaTinggal.text,
                        tahun: tahun.text,
                        statusPerkawinan: statusPerkawinan.text,
                        statusHubunganKeluarga: statusHubunganKeluarga.text,
                        pendidikanTerakhir: pendidikanTerakhir.text,
                        pekerjaan: pekerjaan.text,
                      ),
                    ),
                  ),
                );
              },
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF227471)),
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
    );
  }
}

class LabelRowColumn extends StatelessWidget {
  const LabelRowColumn({
    required this.textRow,
    Key? key,
    required this.labelRowColumn,
  }) : super(key: key);
  final String labelRowColumn;
  final TextEditingController textRow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            labelRowColumn,
            style: const TextStyle(color: Color(0XFF227471)),
          ),
        ),
        SizedBox(
          width: 100,
          child: TextFormField(
            controller: textRow,
            decoration: InputDecoration(
              hintText: labelRowColumn,
              hintStyle: const TextStyle(color: Color(0xFF84ACAC)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFF227471)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class labelRow extends StatelessWidget {
  const labelRow({
    Key? key,
    required this.labelCatalog,
  }) : super(key: key);

  final String labelCatalog;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelCatalog,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF8BB4B4),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 3,
            color: Color(0xFF8BB4B4),
            indent: 30,
          ),
        ),
      ],
    );
  }
}

class LabelTextField extends StatelessWidget {
  const LabelTextField(
      {Key? key, required this.labelText, required this.textEdit})
      : super(key: key);
  final String labelText;
  final TextEditingController textEdit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            labelText,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF227471),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: TextFormField(
            controller: textEdit,
            decoration: InputDecoration(
              hintText: labelText,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.10),
                ),
              ),
              hintStyle: const TextStyle(
                color: Color(0xFF84ACAC),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.10),
                ),
                borderSide: BorderSide(
                  color: Color(0xFF227471),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
