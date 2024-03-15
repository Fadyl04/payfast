import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Budget")),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Text("8000 USD",
                  style:TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(width: 20,),
              Container(
                height: 30,
                width: 30,
                child: Icon(Icons.add),
                decoration: BoxDecoration(
                  border: Border.all(color: CupertinoColors.systemGrey5),
                  borderRadius: BorderRadius.circular(8)
                ),
              ),

            ],
          ),
          Text("Total Budget"),
          SizedBox(height: 30,),
          Container(
            height: 160,
            decoration: BoxDecoration(
                color: Color(0xFF97C9EEFF),
                borderRadius: BorderRadius.circular(14)
            ),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text("Saving Goal",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        width: 110,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Make a Plan",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ) ,
                      )
                    ],
                  ),
                  Container(
                    height: 150,
                    width: 140,
                    color: Colors.black,
                    child: Image.asset("name"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text("Budgets of March 2022",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          SizedBox(height: 15,),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  Text("Home Rent",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Icon(Icons.account_balance),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("01 Mar 2022",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text("Start",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("27,00 USD",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text("Amount",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("31 Mar 2022",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text("Exp",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFF97C9EEFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Budget for March",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    ),
                  ),
                  Text("8,000 USD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){},
            child: Text("Add Budget"),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
