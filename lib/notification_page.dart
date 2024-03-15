import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  Notif.a({super.key});

  String? titre, sousTitre;
  Color? colorIcon, colorBack;
  IconData? icone;

  Notif({
    super.key,
    required this.titre,
    required this.sousTitre,
    required this.icone,
    required this.colorBack,
    this.colorIcon
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: CupertinoColors.systemGrey5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle,
              ),
              child: Icon(icone),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$titre",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text("$sousTitre",
                  style: TextStyle(
                    color: CupertinoColors.systemGrey2,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Notifications")),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Today",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Notif(titre: "Get Cashback", sousTitre: "You get 19 USD cashback.", icone: Icons.add , colorBack: Colors.black87, colorIcon: Colors.yellow,),
          Notif(titre: "Transaction", sousTitre: "Your transaction has been succed.", icone: Icons.card_travel_rounded, colorBack: CupertinoColors.systemGrey3),
          SizedBox(height: 15,),
          Text("Yesterday",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Notif(titre: "Transaction", sousTitre: "You transaction has been succed.", icone: Icons.card_travel_rounded, colorBack: CupertinoColors.systemGrey3),
          Notif(titre: "Bill Pay", sousTitre: "Your payment has been succed.", icone: Icons.card_travel_rounded, colorBack: CupertinoColors.systemGrey3),
          Notif(titre: "Get Cashback", sousTitre: "You get 19 USD cashback.", icone: Icons.add , colorBack: Colors.black87, colorIcon: Colors.yellow,),
          SizedBox(height: 15,),
          Text("22 March 2022",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Notif(titre: "Get Cashback", sousTitre: "You get 19 USD cashback.", icone: Icons.add , colorBack: Colors.black87, colorIcon: Colors.yellow,),
          Notif(titre: "Transaction", sousTitre: "Your transaction has been succed.", icone: Icons.card_travel_rounded, colorBack: CupertinoColors.systemGrey3),
        ],
      ),
    );
  }
}
