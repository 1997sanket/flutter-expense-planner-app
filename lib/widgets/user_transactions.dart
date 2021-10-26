import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: "1", title: "Air Buds", amount: 2000, date: DateTime.now()),
    Transaction(id: "2", title: "Mouse", amount: 3000, date: DateTime.now()),
    Transaction(id: "3", title: "Monitor", amount: 15000, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    //We need to add new transaction inside the setState method, so that Flutter can render the change on screen
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
