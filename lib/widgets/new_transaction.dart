import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTransactionRef;

  NewTransaction(this.addNewTransactionRef);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Amount"),
                controller: amountController,
              ),
              FlatButton(
                  onPressed: () => {
                        addNewTransactionRef(titleController.text,
                            double.parse(amountController.text))
                      },
                  textColor: Colors.purple,
                  child: Text("Add Transaction")),
            ],
          ),
        ));
  }
}
