import 'package:flutter/material.dart';
import 'package:flutter_basic/shared/theme.dart';
import 'package:flutter_basic/ui/widgets/custom_dialog.dart';

enum gender { M, F }

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController tanggalLahirController = TextEditingController();

  gender? chooseGender = gender.M;
  bool? cbBumper = false;
  bool? cbShareCost = false;
  bool? cbOpenTrip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 55, 24, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 85,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Registrasi Akun",
                style: blackSemiTextFont.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                controller: namaController,
                decoration: InputDecoration(
                    hintText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: tanggalLahirController,
                showCursor: true,
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Tanggal Lahir",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime(2000),
                          firstDate: DateTime(1945),
                          lastDate: DateTime.now())
                      .then((date) {
                    setState(() {
                      tanggalLahirController.text =
                          "${date!.day}-${date.weekday}-${date.year}";
                    });
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Jenis Kelamin',
                style: blackTextFont.copyWith(fontSize: 14),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: gender.M,
                        groupValue: chooseGender,
                        onChanged: (gender? value) {
                          setState(() {
                            chooseGender = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Laki - laki',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: gender.F,
                        groupValue: chooseGender,
                        onChanged: (gender? value) {
                          setState(() {
                            chooseGender = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Perempuan',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Rekomendasi Pencarian',
                style: blackTextFont.copyWith(fontSize: 14),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: cbBumper,
                        onChanged: (bool? value) {
                          setState(() {
                            cbBumper = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Bumper',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  ),
                  SizedBox(
                    width: 54,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: cbShareCost,
                        onChanged: (bool? value) {
                          setState(() {
                            cbShareCost = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share Cost',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: cbOpenTrip,
                    onChanged: (bool? value) {
                      setState(() {
                        cbOpenTrip = value;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Open Trip', style: blackTextFont.copyWith(fontSize: 14))
                ],
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: accentColor,
                    padding:
                        EdgeInsets.symmetric(horizontal: 128, vertical: 10),
                  ),
                  child: Text('Registrasi Akun',
                      style: blackTextFont.copyWith(
                          fontSize: 14, color: Colors.white)),
                  onPressed: () {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(emailController.text);
                    if (namaController.text.trim() == "" ||
                        emailController.text.trim() == "" ||
                        passwordController.text.trim() == "" ||
                        tanggalLahirController.text.trim() == "") {
                      final snackBar = SnackBar(
                        content: const Text('Lengkapi data Anda'),
                        action: SnackBarAction(
                          onPressed: () {},
                          label: '',
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else if (!(emailValid)) {
                      final snackBar = SnackBar(
                        content:
                            const Text('Email yang Anda masukkan tidak valid'),
                        action: SnackBarAction(
                          onPressed: () {},
                          label: '',
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else if (passwordController.text.length < 7) {
                      final snackBar = SnackBar(
                        content:
                        const Text('Masukkan password minimal 7 karakter'),
                        action: SnackBarAction(
                          onPressed: () {},
                          label: '',
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      List tempCb = [];
                      if (cbBumper == true) tempCb.add("Bumper");
                      if (cbShareCost == true) tempCb.add("Share Cost");
                      if (cbOpenTrip == true) tempCb.add("Open Trip");
                      var enableCb = tempCb.join(', ');
                      showDialog(
                          context: context,
                          builder: (context) => CustomDialog(
                            nama: namaController.text,
                            email: emailController.text,
                            tanggal_lahir: tanggalLahirController.text,
                            jenis_kelamin: (chooseGender == gender.M)
                                ? "Laki - laki"
                                : "Perempuan",
                            rekomendasi: enableCb,
                          ));
                    }
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Sudah punya akun ?',
                    style: blackTextFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Masuk',
                    style: blueTextFont.copyWith(fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
