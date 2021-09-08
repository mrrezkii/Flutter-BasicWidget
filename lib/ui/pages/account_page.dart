part of 'pages.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Page'),
      ),
      body: Center(
        child: Text(
          'Account Page Screen',
          style: blackBoldTextFont.copyWith(fontSize: 25),
        ),
      ),
    );
  }
}
