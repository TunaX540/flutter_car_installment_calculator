import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ResultScreenUI extends StatefulWidget {
  double? carPrice;
  double? payPerMonth;
  int? month;

  ResultScreenUI({super.key, this.carPrice, this.payPerMonth, this.month});
  @override
  State<ResultScreenUI> createState() => _ResultScreenUIState();
}

class _ResultScreenUIState extends State<ResultScreenUI> {
  @override
  Widget build(BuildContext context) {
    NumberFormat fm = NumberFormat(
      "#,###,##0.##",
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 183, 0, 255),
        title: Text(
          'Results',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('ผ่อนทั้งหมด'),
                Text(
                  '${widget.month}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text('เดือน'),
              ],
            ),
            Text(
              '${widget.payPerMonth}',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            Text('บาทต่อเดือน'),
          ],
        ),
      ),
    );
  }
}
