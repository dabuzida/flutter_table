import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  MyTable({super.key});
  final List<List<String>> _powers = <List<String>>[
    ['a', '1', 'b', '2'],
    ['c', '3', 'd', '4'],
    ['e', '5', 'f', '6'],
  ];

  @override
  Widget build(BuildContext context) {
    final List<TableRow> i = _xxx(list: _powers);
    return Center(
      child: SizedBox(
        width: 400,
        height: 700,
        // color: Colors.red,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            // 0: IntrinsicColumnWidth(),
            // 1: FlexColumnWidth(),
            // 2: FixedColumnWidth(64),
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
            3: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: i,
        ),
      ),
    );
  }

  List<TableRow> _xxx({required List<List<String>> list}) {
    //   _powers = <List<String>>[
    //   ['a', '1', 'b', '2'],
    //   ['c', '3', 'd', '4'],
    //   ['e', '5', 'f', '6'],
    // ];
    final List<TableRow> result = <TableRow>[];
    for (int i = 0; i < list.length; i++) {
      final List<TableCell> temp = <TableCell>[];
      for (int j = 0; j < list[i].length; j++) {
        temp.add(TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: Container(
            height: 32,
            color: Colors.blue.shade100,
            child: Text(
              list[i][j],
              textAlign: TextAlign.center,
            ),
          ),
        ));
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
