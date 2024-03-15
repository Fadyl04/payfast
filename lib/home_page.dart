import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'budget_page.dart';
import 'add_budget_page.dart';
import 'notification_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.yellow),
                title: Text("Fadyl",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage() ));
                  },
                  icon: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CupertinoColors.systemGrey6
                      ),
                      child: Icon(Icons.notifications)
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("70,000 USD",
                  style:TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  )
              ),
              Text("Total Balance"),
              SizedBox(height: 30,),
              Container(
                height: 120,
                decoration: BoxDecoration(
                    color: Color(0xFF97C9EEFF),
                    borderRadius: BorderRadius.circular(14)
                ),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.compare_arrows_outlined),
                          ),
                          Text("Tranfer")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.spa_rounded),
                          ),
                          Text("Payment")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.shield_moon),
                          ),
                          Text("Pay Bil")
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Budgets",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddBudget() ));
                      },
                      child: Text("Add Budgets",
                        style: TextStyle(
                          color: CupertinoColors.systemGrey2,
                          fontSize: 14,
                        ),),
                  )

                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: IconButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BudgetPage() ));
                              },
                              icon: Icon(Icons.account_balance),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("27,00 USD",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Home Rent",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color(0xFFD5C2EAB60),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.directions_bus_filled),
                          ),
                          SizedBox(height: 30,),
                          Text("3,00 USD",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Transport",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87
                            ),
                          ),
                        ],

                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Text("See all",style: TextStyle(
                    color: CupertinoColors.systemGrey2,
                    fontSize: 14,
                  ),),

                ],
              ),
              SizedBox(height: 15,),
              ListTile(
                leading: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey5,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.cabin_outlined,
                      color: Colors.orange,
                    )
                ),
                title: Text("Restaurant",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("19 March 2022",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Text("110 USD",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey5,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.shopify_sharp,
                    )
                ),
                title: Text("Shopping",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("23 March 2022",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                trailing: Text("100 USD",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              )

            ],
          ),
        ),
      ),

      bottomNavigationBar:  NavigationBar(
        selectedIndex: 0,

        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
            tooltip: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet_rounded, color: CupertinoColors.systemGrey2,),
            label: '',
            tooltip: "Wallet",
          ),
          NavigationDestination(
            icon: Icon(Icons.savings, color: CupertinoColors.systemGrey2,),
            label: '',
            tooltip: 'Goal',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard, color: CupertinoColors.systemGrey2,),
            label: '',
            tooltip: 'Dashboard',
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.document_scanner,
          color: Colors.white,
        ),
        shape: CircleBorder(
          eccentricity: 0,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

    );
  }
}
