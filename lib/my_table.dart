import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  MyTable({super.key});
  final List<List<String>> _powers = <List<String>>[
    ['a', '1', 'b', '2'],
    ['c', '3', 'd', '4'],
    ['e', '5', 'f', '6'],
  ];

  final List<List<String>> _powers2 = <List<String>>[
    ['시행', '시작', '종료'],
    // 2024-04-08 10:00 ~ 2024-05-08 10:00
    ['1', '2024-04-08 10:00', '2024-05-08 10:00'],
    ['2', '2024-04-08 10:00', '2024-05-08 10:00'],
    ['3', '2024-04-08 10:00', '2024-05-08 10:00'],
    ['4', '2024-04-08 10:00', '2024-05-08 10:00'],
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 700,
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        child: Table(
          border: TableBorder.all(color: Colors.green),
          columnWidths: const <int, TableColumnWidth>{
            // 0: IntrinsicColumnWidth(),
            // 1: FlexColumnWidth(),
            // 2: FixedColumnWidth(64),

            0: FixedColumnWidth(20),
            1: FixedColumnWidth(150),
            2: FixedColumnWidth(150),

            // 0: FlexColumnWidth(40),
            // 1: FlexColumnWidth(40),
            // 2: FlexColumnWidth(40),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: _xxx(list: _powers2),
        ),
      ),
    );
  }

  List<TableRow> _xxx({required List<List<String>> list}) {
    final List<TableRow> result = <TableRow>[];
    for (int i = 0; i < list.length; i++) {
      final List<TableCell> temp = <TableCell>[];
      for (int j = 0; j < list[i].length; j++) {
        temp.add(
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.bottom,
            // verticalAlignment: TableCellVerticalAlignment.top,

            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 11, vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)), // color: Colors.blue.shade100,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                // color: Colors.red,
                child: Text(
                  list[i][j],
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      }

      result.add(
        TableRow(
          // decoration: const BoxDecoration(
          //   color: Colors.grey,
          // ),
          children: temp,
        ),
      );
    }

    //
    return result;
  }
}
