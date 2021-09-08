part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 55, 24, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Rezki',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: greyColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Bandung, West Java',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: blackColor)),
                      ],
                    )
                  ],
                ),
                Text(
                  'Chat',
                  style: blueSemiTextFont,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/iklan.png"),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuIcon('Bumper', "assets/vector/ic_bumper.svg"),
                MenuIcon('Open Trip', "assets/vector/ic_open_trip.svg"),
                MenuIcon('Nimbrung', "assets/vector/ic_nimbrung.svg"),
                MenuIcon('Promo', "assets/vector/ic_promo.svg"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
