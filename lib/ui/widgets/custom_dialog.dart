import 'package:flutter/material.dart';
import 'package:flutter_basic/shared/theme.dart';

class CustomDialog extends StatelessWidget {
  final String nama;
  final String email;
  final String tanggal_lahir;
  final String jenis_kelamin;
  final String rekomendasi;

  CustomDialog(
      {required this.nama,
      required this.email,
      required this.tanggal_lahir,
      required this.jenis_kelamin,
      this.rekomendasi = ''});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      child: renderDialog(context),
    );
  }

  renderDialog(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Apa Anda yakin ?",
                  style: blackBoldTextFont.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Nama : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    nama,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Email : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    email,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Tanggal Lahir : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    tanggal_lahir,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Jenis kelamin : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    jenis_kelamin,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Pencarian : ",
                    style: blackTextFont.copyWith(fontSize: 14),
                  ),
                  Text(
                    rekomendasi,
                    style: blackBoldTextFont.copyWith(fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: accentColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Tidak",
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: primaryColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Iya",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
