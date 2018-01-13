part of hussle;

class HussleExpansion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return buildUi(context);
  }

  Widget buildUi(BuildContext context) {

    return new Column(
      children: <Widget>[
        new Center(
          child: new Text('Expansion Panel'),
        ),

        expansionPanels()
      ],
    );
  }

  ExpansionPanelList expansionPanels() {
    return new ExpansionPanelList(
      children: <ExpansionPanel>[
        expansionPanel()
      ],
    );
  }

  ExpansionPanel expansionPanel() {

    return new ExpansionPanel(
      headerBuilder: null,
      body: new Text('Expansion panel body')
    );
  }
}