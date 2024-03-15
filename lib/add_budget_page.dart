import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextFields.b({super.key});

  String? lab;

  TextFields({super.key, required this.lab,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "$lab",
        ),
      ),
    );
  }
}

class SwitchText extends StatelessWidget {
  SwitchText.b({super.key});

  String? texte;
  bool val = false;
  Color? couleur;

  SwitchText({super.key, required this.texte, required this.val, this.couleur});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$texte"),
          Switch(
              value: val,
              onChanged: (value){},
              activeTrackColor: couleur,
          )
        ],
      ),
    );
  }
}



class AddBudget extends StatelessWidget {
  const AddBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add Budget")),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Whats the budget for ?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ) ,
          ),
          TextFields(lab: "Budget category name",),
          TextFields(lab: "Budget Amount"),
          TextFields(lab: "Budget Notes"),
          TextFields(lab: "Set Timeline"),
          TextFields(lab: "Get an Emoji"),
          SwitchText(texte: "Auto add in every month", val: false),
          SwitchText(texte: "Reminder", val: true, couleur: Colors.orange,),
          SwitchText(texte: "Expense Notification", val: true, couleur: Colors.orange,),
          SizedBox(height: 25,),
          ElevatedButton(
              onPressed: (){},
              child: Text("Save"),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
          )
        ],
      ),
    );
  }
}
