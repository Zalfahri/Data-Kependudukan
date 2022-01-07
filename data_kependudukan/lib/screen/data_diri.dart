import 'package:data_kependudukan/model/input_data_model.dart';
import 'package:data_kependudukan/screen/input_new_data.dart';
import 'package:flutter/material.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({Key? key, required this.inputDataModel}) : super(key: key);

  final InputDataModel inputDataModel;

  @override
  _DataDiriState createState() => _DataDiriState();
}

class _DataDiriState extends State<DataDiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Diri',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            LabelText(labelCategory: 'Personal'),
            Divider(thickness: 2, height: 0, color: Colors.black),
            LabelTextField(
              labelForm: 'Nama Lengkap',
              labelForm2: widget.inputDataModel.namaLengkap!,
            ),
            LabelTextField(
              labelForm: 'NIK',
              labelForm2: widget.inputDataModel.nik!,
            ),
            LabelTextField(
              labelForm: 'Kewarhanegaraan',
              labelForm2: widget.inputDataModel.kewarganegaraan!,
            ),
            LabelTextField(
              labelForm: 'Suku Bangsa',
              labelForm2: widget.inputDataModel.sukuBangsa!,
            ),
            LabelTextField(
              labelForm: 'Agama',
              labelForm2: widget.inputDataModel.agama!,
            ),
            LabelText(labelCategory: 'Kelahiran'),
            Divider(thickness: 2, height: 0, color: Colors.black),
            LabelTextField(
              labelForm: 'Tempat Lahir',
              labelForm2: widget.inputDataModel.tempatLahir!,
            ),
            LabelTextField(
              labelForm: 'Tanggal Lahir',
              labelForm2: widget.inputDataModel.tanggalLahir!,
            ),
            LabelTextField(
              labelForm: 'Jenis Kelamin',
              labelForm2: widget.inputDataModel.jenisKelamin!,
            ),
            LabelText(labelCategory: 'Alamat'),
            Divider(thickness: 2, height: 0, color: Colors.black),
            LabelTextField(
              labelForm: 'Alamat',
              labelForm2: widget.inputDataModel.alamat!,
            ),
            LabelTextField(
              labelForm: 'Jalan / Dukuh / Blok',
              labelForm2: widget.inputDataModel.jalanDukuhBlok!,
            ),
            LabelTextField(
              labelForm: 'Nomor',
              labelForm2: widget.inputDataModel.nomor!,
            ),
            LabelTextField(
              labelForm: 'RT',
              labelForm2: widget.inputDataModel.rt!,
            ),
            LabelTextField(
              labelForm: ' RW',
              labelForm2: widget.inputDataModel.rw!,
            ),
            LabelTextField(
              labelForm: 'Kelurahan / Desa',
              labelForm2: widget.inputDataModel.kelurahanDesa!,
            ),
            LabelTextField(
              labelForm: 'Kecamatan',
              labelForm2: widget.inputDataModel.kecamatan!,
            ),
            LabelTextField(
              labelForm: 'Kabupaten',
              labelForm2: widget.inputDataModel.kabupaten!,
            ),
            LabelTextField(
              labelForm: 'Provinsi',
              labelForm2: widget.inputDataModel.provinsi!,
            ),
            LabelTextField(
              labelForm: 'Lama Tinggal',
              labelForm2: widget.inputDataModel.lamaTinggal!,
            ),
            LabelTextField(
              labelForm: 'Tahun',
              labelForm2: widget.inputDataModel.tahun!,
            ),
            LabelText(labelCategory: 'Status'),
            Divider(thickness: 2, height: 0, color: Colors.black),
            LabelTextField(
              labelForm: 'Status Perkawinan',
              labelForm2: widget.inputDataModel.statusPerkawinan!,
            ),
            LabelTextField(
              labelForm: 'Status Hubungan Keluarga',
              labelForm2: widget.inputDataModel.statusHubunganKeluarga!,
            ),
            LabelTextField(
              labelForm: 'Pendidikan Terakhir',
              labelForm2: widget.inputDataModel.pendidikanTerakhir!,
            ),
            LabelTextField(
              labelForm: 'Pekerjaan',
              labelForm2: widget.inputDataModel.pekerjaan!,
            ),
          ],
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText({
    Key? key,
    required this.labelCategory,
  }) : super(key: key);
  final String labelCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Color(0xFF227471)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            labelCategory,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Color(0xFF8BB4B4)),
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    Key? key,
    required this.labelForm,
    required this.labelForm2,
  }) : super(key: key);
  final String labelForm;
  final String labelForm2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10),
        Text(labelForm),
        SizedBox(height: 10),
        Text(
          labelForm2,
          style: TextStyle(color: Color(0xFF227471), fontSize: 17),
        ),
        SizedBox(height: 10),
        Divider(thickness: 2, height: 0, color: Colors.black),
        SizedBox(height: 10)
      ],
    );
  }
}
