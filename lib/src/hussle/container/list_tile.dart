part of hussle;

class HussleListTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new Column(
      children: <Widget>[
        _buildListTile()
      ],
    );
  }

  ListTile _buildListTile() {
    return new ListTile(
      leading: const Icon(Icons.account_box),
      title: const Text('Hello List tile'),
      onTap: () => print('onTap Called'),
    );
  }
}