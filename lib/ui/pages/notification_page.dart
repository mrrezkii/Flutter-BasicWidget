import 'package:flutter/material.dart';
import 'package:flutter_basic/shared/theme.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Page'),
      ),
      body: Center(
        child: Text(
          'Notification Page Screen',
          style: blackBoldTextFont.copyWith(fontSize: 25),
        ),
      ),
    );
  }
}
