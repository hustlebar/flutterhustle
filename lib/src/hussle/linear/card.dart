part of hussle;

class HussleCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new Column(
      children: <Widget>[
        _buildCard(),
        _buildCard(),
        _buildCard()
      ],
    );
  }

  Card _buildCard() {
    return new Card(
      child: new Column(
        children: <Widget>[

          new ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Do you want to buy?'),
          ),

          new ButtonTheme.bar(
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  onPressed: () => print('Button buy clicked'),
                  child: const Text('Buy')
                ),

                new FlatButton(
                  onPressed: () => print('Button cancel clicked'),
                  child: const Text('Cancel')
                )
              ],
            ),
          )


        ],
      ),
      elevation: 5.0,
    );
  }
}