part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController namaController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController tanggalLahirController = TextEditingController();

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
                "Masuk Akun",
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
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(1945, 1, 1),
                      maxTime: DateTime(2022, 1, 1), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                    tanggalLahirController.text =
                        "${date.day}-${date.weekday}-${date.year}";
                  }, currentTime: DateTime.now(), locale: LocaleType.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
