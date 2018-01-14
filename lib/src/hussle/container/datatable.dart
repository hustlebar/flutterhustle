part of hussle;

class HussleDataTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new Column(
      children: <Widget>[
        _buildDataTable()
      ],
    );
  }

  DataTable _buildDataTable() {
    return new DataTable(
      columns: _buildColumns(),
      rows: _buildRows()
    );
  }

  List<DataColumn> _buildColumns() {
    List<DataColumn> columns = new List<DataColumn>();
    columns.add(new DataColumn(label: new Text('Name')));
    columns.add(new DataColumn(label: new Text('Age')));

    return columns;
  }

  List<DataRow> _buildRows() {
    List<DataRow> rows = new List<DataRow>();

    rows.add(
      new DataRow(
        cells: [
          new DataCell(new Text('Tham')),
          new DataCell(new Text('38'))
        ],
        onSelectChanged: (bool isSelected) => print('Index: $isSelected')
      )
    );

    rows.add(
      new DataRow(
        cells: [
          new DataCell(new Text('Arasu')),
          new DataCell(new Text('28'))
        ],
        onSelectChanged: (bool isSelected) => print('Index: $isSelected')
      )
    );

    return rows;
  }
}