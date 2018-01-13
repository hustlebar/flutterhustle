part of hussle;

class HussleExpansion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return buildUi(context);
  }

  Widget buildUi(BuildContext context) {

    return new Column(
      children: <Widget>[
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
      headerBuilder: (BuildContext context, bool isExpanded) =>
        new Text(isExpanded ? "Expanded" : "Collapsed"),
      body: new Text('Expansion panel body')
    );
  }
}